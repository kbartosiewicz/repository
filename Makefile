# ============================
#  UNIWERSALNY MAKEFILE DLA C++
# ============================

# Kompilator i flagi
CXX := g++
CXXFLAGS := -Wall -Wextra -std=c++17

# Nazwa pliku wynikowego (możesz zmienić)
TARGET := program

# Automatyczne wykrywanie wszystkich plików .cpp w katalogu
SRCS := $(wildcard *.cpp)
OBJS := $(SRCS:.cpp=.o)

# Domyślny cel (budowanie programu)
all: $(TARGET)

# Linkowanie plików obiektowych do programu
$(TARGET): $(OBJS)
	$(CXX) $(CXXFLAGS) -o $@ $^

# Reguła dla kompilacji pojedynczych plików .cpp -> .o
%.o: %.cpp
	$(CXX) $(CXXFLAGS) -c $< -o $@

# Cel do czyszczenia (usuwa pliki wynikowe)
clean:
	rm -f $(OBJS) $(TARGET)

# Opcjonalny cel: uruchomienie programu po kompilacji
run: all
	./$(TARGET)
