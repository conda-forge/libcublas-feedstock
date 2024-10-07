#include <cublas_v2.h>

int main() {
    cublasStatus_t stat;
    cublasHandle_t handle;
    stat = cublasCreate(&handle);
    return stat != CUBLAS_STATUS_SUCCESS;
}
