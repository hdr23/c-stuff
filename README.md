# C Practice Sandbox

Minimal sandbox to learn good C habits. Uses CMake.

## Layout

- **`src/main.c`** — Your playground. Call `lesson_*` functions and experiment.
- **`src/lessons.c`** — Example implementations (read these to learn).
- **`include/lessons.h`** — Declarations for the lesson functions.

## Build

From the project root:

```bash
mkdir build
cd build
cmake ..
cmake --build .
```

On Windows, either:

- Open **Developer Command Prompt for VS** (if you have Visual Studio), then run the commands above, or  
- Install [MinGW-w64](https://www.mingw-w64.org/) or MSYS2, add `gcc` to `PATH`, then:

  ```bash
  cmake -G "MinGW Makefiles" -DCMAKE_BUILD_TYPE=Debug ..
  cmake --build .
  ```

Run the executable: `./sandbox` (or `sandbox.exe` in `build/` on Windows).

## What the lessons teach

| Function | Good habits |
|----------|-------------|
| `lesson_strlen` | `const char*` for read-only input, NULL check |
| `lesson_strncpy_safe` | Bounds checking, always null-terminate |
| `lesson_strcmp` | Handle NULL, use `(unsigned char)` for comparison |
| `lesson_swap_ints` | Take pointers for “out” values, validate pointers |
| `lesson_int_to_string` | Buffer size parameter, safe negative handling |
| `lesson_array_sum` | `const` + `size_t` for array parameters |
| `lesson_all` | Function pointers and predicate style |

Edit `main.c` and re-run to try your own code.
