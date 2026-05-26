#include <cstddef>
#include <cstdint>
#include <cstdarg>

extern "C" void* memset(void* dest, int value, size_t count) {
  auto* out = static_cast<unsigned char*>(dest);
  for (size_t i = 0; i < count; ++i) {
    out[i] = static_cast<unsigned char>(value);
  }
  return dest;
}

extern "C" void* memcpy(void* dest, const void* src, size_t count) {
  auto* out = static_cast<unsigned char*>(dest);
  const auto* in = static_cast<const unsigned char*>(src);
  for (size_t i = 0; i < count; ++i) {
    out[i] = in[i];
  }
  return dest;
}

extern "C" void* memmove(void* dest, const void* src, size_t count) {
  auto* out = static_cast<unsigned char*>(dest);
  const auto* in = static_cast<const unsigned char*>(src);
  if (out < in) {
    for (size_t i = 0; i < count; ++i) {
      out[i] = in[i];
    }
  } else if (out > in) {
    for (size_t i = count; i > 0; --i) {
      out[i - 1] = in[i - 1];
    }
  }
  return dest;
}

extern "C" int memcmp(const void* lhs, const void* rhs, size_t count) {
  const auto* a = static_cast<const unsigned char*>(lhs);
  const auto* b = static_cast<const unsigned char*>(rhs);
  for (size_t i = 0; i < count; ++i) {
    if (a[i] != b[i]) {
      return static_cast<int>(a[i]) - static_cast<int>(b[i]);
    }
  }
  return 0;
}

extern "C" size_t strlen(const char* str) {
  size_t len = 0;
  while (str[len] != '\0') {
    ++len;
  }
  return len;
}

extern "C" int strcmp(const char* lhs, const char* rhs) {
  while (*lhs != '\0' && *lhs == *rhs) {
    ++lhs;
    ++rhs;
  }
  return static_cast<unsigned char>(*lhs) - static_cast<unsigned char>(*rhs);
}

extern "C" int strncmp(const char* lhs, const char* rhs, size_t count) {
  for (size_t i = 0; i < count; ++i) {
    const unsigned char a = static_cast<unsigned char>(lhs[i]);
    const unsigned char b = static_cast<unsigned char>(rhs[i]);
    if (a != b || a == '\0' || b == '\0') {
      return static_cast<int>(a) - static_cast<int>(b);
    }
  }
  return 0;
}

extern "C" void DebugLog(const char*, va_list) {}

extern "C" int DebugVsnprintf(char* buffer, size_t buf_size, const char*,
                              va_list) {
  if (buf_size > 0) {
    buffer[0] = '\0';
  }
  return 0;
}

extern "C" void __cxa_pure_virtual() {
  while (true) {}
}

extern "C" void abort() {
  while (true) {}
}

extern "C" int* __errno() {
  static int value;
  return &value;
}

void* operator new(size_t, void* ptr) noexcept { return ptr; }
void* operator new[](size_t, void* ptr) noexcept { return ptr; }
void operator delete(void*, void*) noexcept {}
void operator delete[](void*, void*) noexcept {}
void operator delete(void*) noexcept {}
void operator delete[](void*) noexcept {}
void operator delete(void*, size_t) noexcept {}
void operator delete[](void*, size_t) noexcept {}
