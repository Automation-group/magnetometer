#include <SPI.h>
#include <Display16.h>


Display16 display16(8, 3);

//Назначим 7-й ардуиновский вывод для вывода
//сигнала RESET(inv)и назовем его ResetPin
enum { ResetPin = 7 };

//Назначим 10-й ардуиновский пин как сигнал CS(inv)
enum { CSpin = 10 };

//Назначим 9-й ардуиновский пин как сигнал DRDY(inv)
enum { DRDYpin = 9 };

void setup () {
  //Установки: DRDYpin - на ввод
  pinMode (DRDYpin, INPUT);   
  
  //Настройка вывода A2 для включения твёрдотельного реле
  pinMode(A2, OUTPUT); 
  analogReference(DEFAULT);
  
  //Инициализируем последовательный порт для передачи данных
  Serial.begin(115200);
}

// Переменные для усреднения значений АЦП
int average = 0; //Сигнал на заполнение массива 0 - массив не заполенен, 1 - массив заполенен
int average_i = 0;
long int valADCaver = 0;
long int valAverADC[10];

int adc_temp_a = 0; //Напряжение на терморезисторе R1 ед. ацп
int adc_temp_b = 0; //Напряжение на терморезисторе R2 ед. ацп

// Биты АЦП
long int usl0;
long int usl1;
long int usl2;

// Ток в катушеке магнита
long int usls; //Ток в единицах АЦП
float Current; //Значение тока в Амперах

// Буфер для хранения команд последовательного порта
int incomingByte = 0;
const int cmd_buffer_size = 20;
char cmd_buffer[cmd_buffer_size + 1];
int in_buffer_pos = 0;

// Функция обработки комманд для последовательного порта
void analyse_command();

void loop () {
  
    //Инициализируем SPI
    SPI.begin(); //запуск SPI
    SPI.setBitOrder(MSBFIRST); // старшим битом вперед
    SPI.setDataMode(SPI_MODE3); // SPOL=1, CPHA=1
    SPI.setClockDivider(SPI_CLOCK_DIV128); // делитель тактов 128    
  
    //Сброс АЦП
    digitalWrite(ResetPin, HIGH); //Исходное значение 1
    digitalWrite(ResetPin, LOW); //значение 0
    delayMicroseconds(20); //Сброс в 0 на 5 мкс
    digitalWrite(ResetPin, HIGH); //Вновь исходное значение 1
  
    digitalWrite(CSpin, HIGH); //Исходное значение 1

    delayMicroseconds(20); //Пауза на 5 мкс
      
    uint8_t byte_out = 0x20; // предстоит запись в верх. рег-р фильтра,
    //аналоговые входы: плюс на AIN1, минус - на AIN6 
    digitalWrite(CSpin, LOW); //Рабочее значение 0  
    delayMicroseconds(5); //Пауза на 5 мкс
    SPI.transfer(byte_out); // отсыл в РО
    digitalWrite(CSpin, HIGH); //Исходное значение 1. рег-р фильтра
     
    byte_out = 0xE1;  //униполярный входной сигнал, разрядность результата - 24
    digitalWrite(CSpin, LOW); //Рабочее значение 0  
    delayMicroseconds(5); //Пауза на 5 мкс
    SPI.transfer(byte_out); // отсыл в верх. рег. фильтра
    digitalWrite(CSpin, HIGH); //Исходное значение 1   
     
    byte_out = 0x30; // предстоит запись в нижрий рег-р фильтра,
    digitalWrite(CSpin, LOW); //Рабочее значение 0  
    delayMicroseconds(5); //Пауза на 5 мкс
    SPI.transfer(byte_out); // отсыл в РО
    digitalWrite(CSpin, HIGH); //Исходное значение 1  
      
    byte_out = 0x80; // информация для записи в нижний рег-р фильтра
    digitalWrite(CSpin, LOW); //Рабочее значение 0  
    delayMicroseconds(5); //Пауза на 5 мкс
    SPI.transfer(byte_out); // отсыл в нижний рег. фильтра
    digitalWrite(CSpin, HIGH); //Исходное значение 1  
      
    byte_out = 0x10; // предстоит запись в рег-р режима,
    //аналоговые входы: плюс на AIN1, минус - на AIN6 
    digitalWrite(CSpin, LOW); //Рабочее значение 0  
    delayMicroseconds(5); //Пауза на 5 мкс
    SPI.transfer(byte_out); // отсыл в РО 
    digitalWrite(CSpin, HIGH); //Исходное значение 1  
      
    byte_out = 0x20; // информация для записи в рег-р режима: 
    //автокалибровка и коэффициент усиления внутр. усилителя равен 1
    digitalWrite(CSpin, LOW); //Рабочее значение 0  
    delayMicroseconds(5); //Пауза на 5 мкс
    SPI.transfer(byte_out); // отсыл в регистр режима
    digitalWrite(CSpin, HIGH); //Исходное значение 1  
      
    byte_out = 0x58; // в РО: предстоит чтение из регистра данных
    digitalWrite(CSpin, LOW); //Рабочее значение 0
    delayMicroseconds(5); //Пауза на 5 мкс
    SPI.transfer(byte_out); // отсыл в РО
    digitalWrite(CSpin, HIGH); //Исходное значение 1  
      
    //digitalWrite(CSpin, LOW); //Рабочее значение 0
    while (digitalRead(DRDYpin) != 0); // ждем, когда можно будет прочитать
    delayMicroseconds(5); //Пауза на 5 мкс 
    digitalWrite(CSpin, LOW); //Рабочее значение 0
    uint8_t byte_in0 = SPI.transfer(0); /// операция чтения 0-го байта
    digitalWrite(CSpin, HIGH);
      
    while (digitalRead(DRDYpin) != 0); // ждем, когда можно будет прочитать
    delayMicroseconds(5); //Пауза на 5 мкс
    digitalWrite(CSpin, LOW); //Рабочее значение 0  
    uint8_t byte_in1 = SPI.transfer(0); /// операция чтения 1-го байта
    digitalWrite(CSpin, HIGH);
      
    while (digitalRead(DRDYpin) != 0); // ждем, когда можно будет прочитать
    delayMicroseconds(5); //Пауза на 5 мкс
    digitalWrite(CSpin, LOW); //Рабочее значение 0
    uint8_t byte_in2 = SPI.transfer(0); /// операция чтения 2-го байта
    digitalWrite(CSpin, HIGH); 
    
    //digitalWrite(CSpin, HIGH); //Вновь исходное значение 1
   
    //Формирование 24-х разрядного слова из 3-х байт
    usl0  = 65536 * float(byte_in0); 
    usl1  = 256 * float(byte_in1);
    usl2  = float(byte_in2);
    usls  = usl0 + usl1 + usl2;
    
    // Усреднение по 10 значениям
    valAverADC[average_i] = usls;
    
    if (!average & average_i == 9) average = 1; //Условие на накопление 10 значений для усреднения
    
    if (average) {
      valADCaver = 0;
      for (int i = 0; i < 10; i++) valADCaver = valADCaver + valAverADC[i];

      for (int i = 1; i < 10; i++) valAverADC[i-1] = valAverADC[i]; //Сдвиг массива влево на один элемент
      
      usls = valADCaver/10; // Находим среднее значение
    }
    
    // Рачитываем значение тока
    Current = 2.99998E-06 * (float)usls - 2.51438E+01; 
    
    // Счётчик числа усреднений
    average_i++;
    if (average_i > 9) average_i = 9;
    
    //delay(100);
    //Serial.print(usls); //отсылка в Serial Monitor
    //Serial.print(";     U = ");
    //Serial.println(Current, 3); //отсылка в Serial Monitor
    
    // Опрос последовательного пота
    if (Serial.available() > 0) {
    incomingByte = Serial.read();
    
    if (incomingByte == '\n') {
      cmd_buffer[in_buffer_pos] = 0;
      in_buffer_pos = 0;
      analyse_command();
   
    } else {
        cmd_buffer[in_buffer_pos] = incomingByte;
        in_buffer_pos++;
        if (in_buffer_pos == cmd_buffer_size) in_buffer_pos = 0;
      }
    }
    
    delay(10);
    
    // Инициализация АЦП для работы с 16-ти разрядным индикаторо
    SPI.begin();
    display16.begin(SPI);
    SPI.setDataMode(SPI_MODE0);
    
    display16.clear();
    display16.print(Current, 3);
    display16.updateAll(SPI);
    
    //Определяем напряжение на терморезисторах в ед. ацп
    adc_temp_a = analogRead(0);
    adc_temp_b = analogRead(1);
    
    if (adc_temp_a>490 || adc_temp_b>490) {
      digitalWrite(A2, LOW);
      display16.clear();
      display16.print("HEAT");
      display16.updateAll(SPI);
    } else digitalWrite(A2, HIGH); // включение твёрдотельного реле
    
    delay(10);
}

void analyse_command() {
    // Выдать значение тока ед. ацп
    if ((cmd_buffer[0] == 'G') && (cmd_buffer[1] == 'D')) {
      Serial.print("GD");
      Serial.print(usls, DEC);
      Serial.print('\n');
      //Serial.print("A = ");
      //Serial.println(Current, 3);
      Serial.flush();
      return;
    }
    
    // Выдать температура на терморезисторах в ед. ацп
    if ((cmd_buffer[0] == 'T') && (cmd_buffer[1] == 'D')) {
      Serial.print("RA");
      Serial.print(adc_temp_a, DEC);
      Serial.print(' ');
      Serial.print("RB");
      Serial.print(adc_temp_b, DEC);
      Serial.print('\n');
      Serial.flush();
      return;
    }
    
    // Выдать ID устройста
    if ( (cmd_buffer[0] == 'I') && (cmd_buffer[1] == 'D') ) {
      //ID "magnetometer current regulator" - контрольная сумма MD5
      Serial.print("ID9f11fc5eeecd3001a0347d6152eb1e3b\n");
      Serial.flush();
      return;
    }
}
