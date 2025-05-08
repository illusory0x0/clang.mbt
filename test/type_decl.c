typedef struct A {
  void (*code)(struct A* context, int x);
}* AA;

static AA x = 0;