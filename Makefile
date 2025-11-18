# Компилятор
CC = gcc

# Флаги компиляции
CFLAGS = -Wall -Werror -Iinclude

# Объектные файлы
OBJ_MAIN = src/main.o
OBJ_LIB = src/my_lib.o

# Итоговый исполняемый файл
TARGET = my_app

# Правила сборки

# Создать исполняемый файл
$(TARGET): $(OBJ_MAIN) $(OBJ_LIB)
    $(CC) $(OBJ_MAIN) $(OBJ_LIB) -o $(TARGET)

# Компиляция main.c
src/main.o: src/main.c include/my_lib.h
    $(CC) $(CFLAGS) -c src/main.c -o src/main.o

# Компиляция my_lib.c
src/my_lib.o: src/my_lib.c include/my_lib.h
    $(CC) $(CFLAGS) -c src/my_lib.c -o src/my_lib.o

# Правило для очистки
clean:
    rm -f src/*.o $(TARGET)
