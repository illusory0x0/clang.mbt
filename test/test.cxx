template<typename T> void swap(T&, T&);

struct X {  };
void swap(X&, X&);

template<typename T>
void reverse(T* first, T* last) {
  while (first < last - 1) {
    swap(*first, *--last);
    ++first;
  }
}

struct Y { };
void swap(Y&, Y&);