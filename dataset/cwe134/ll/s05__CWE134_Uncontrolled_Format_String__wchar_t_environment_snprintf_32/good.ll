; ModuleID = 'data/C/testcases/CWE134_Uncontrolled_Format_String/s05/CWE134_Uncontrolled_Format_String__wchar_t_environment_snprintf_32.c'
source_filename = "data/C/testcases/CWE134_Uncontrolled_Format_String/s05/CWE134_Uncontrolled_Format_String__wchar_t_environment_snprintf_32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [16 x i32] [i32 102, i32 105, i32 120, i32 101, i32 100, i32 115, i32 116, i32 114, i32 105, i32 110, i32 103, i32 116, i32 101, i32 115, i32 116, i32 0], align 4
@.str.1 = private unnamed_addr constant [4 x i32] [i32 65, i32 68, i32 68, i32 0], align 4
@.str.2 = private unnamed_addr constant [3 x i32] [i32 37, i32 115, i32 0], align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__wchar_t_environment_snprintf_32_good() #0 {
  call void @goodG2B()
  call void @goodB2G()
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @goodG2B() #0 {
  %1 = alloca ptr, align 8
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  %4 = alloca [100 x i32], align 16
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca [100 x i32], align 16
  store ptr %1, ptr %2, align 8
  store ptr %1, ptr %3, align 8
  call void @llvm.memset.p0.i64(ptr align 16 %4, i8 0, i64 400, i1 false)
  %8 = getelementptr inbounds [100 x i32], ptr %4, i64 0, i64 0
  store ptr %8, ptr %1, align 8
  %9 = load ptr, ptr %2, align 8
  %10 = load ptr, ptr %9, align 8
  store ptr %10, ptr %5, align 8
  %11 = load ptr, ptr %5, align 8
  %12 = call ptr @wcscpy(ptr noundef %11, ptr noundef @.str) #5
  %13 = load ptr, ptr %5, align 8
  %14 = load ptr, ptr %2, align 8
  store ptr %13, ptr %14, align 8
  %15 = load ptr, ptr %3, align 8
  %16 = load ptr, ptr %15, align 8
  store ptr %16, ptr %6, align 8
  call void @llvm.memset.p0.i64(ptr align 16 %7, i8 0, i64 400, i1 false)
  %17 = getelementptr inbounds [100 x i32], ptr %7, i64 0, i64 0
  %18 = load ptr, ptr %6, align 8
  %19 = call i32 (ptr, i64, ptr, ...) @swprintf(ptr noundef %17, i64 noundef 99, ptr noundef %18) #5
  %20 = getelementptr inbounds [100 x i32], ptr %7, i64 0, i64 0
  call void @printWLine(ptr noundef %20)
  ret void
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #1

; Function Attrs: nounwind
declare ptr @wcscpy(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind
declare i32 @swprintf(ptr noundef, i64 noundef, ptr noundef, ...) #2

declare void @printWLine(ptr noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define internal void @goodB2G() #0 {
  %1 = alloca ptr, align 8
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  %4 = alloca [100 x i32], align 16
  %5 = alloca ptr, align 8
  %6 = alloca i64, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca [100 x i32], align 16
  store ptr %1, ptr %2, align 8
  store ptr %1, ptr %3, align 8
  call void @llvm.memset.p0.i64(ptr align 16 %4, i8 0, i64 400, i1 false)
  %10 = getelementptr inbounds [100 x i32], ptr %4, i64 0, i64 0
  store ptr %10, ptr %1, align 8
  %11 = load ptr, ptr %2, align 8
  %12 = load ptr, ptr %11, align 8
  store ptr %12, ptr %5, align 8
  %13 = load ptr, ptr %5, align 8
  %14 = call i64 @wcslen(ptr noundef %13) #6
  store i64 %14, ptr %6, align 8
  %15 = call ptr @getenv(ptr noundef @.str.1) #5
  store ptr %15, ptr %7, align 8
  %16 = load ptr, ptr %7, align 8
  %17 = icmp ne ptr %16, null
  br i1 %17, label %18, label %27

18:                                               ; preds = %0
  %19 = load ptr, ptr %5, align 8
  %20 = load i64, ptr %6, align 8
  %21 = getelementptr inbounds nuw i32, ptr %19, i64 %20
  %22 = load ptr, ptr %7, align 8
  %23 = load i64, ptr %6, align 8
  %24 = sub i64 100, %23
  %25 = sub i64 %24, 1
  %26 = call ptr @wcsncat(ptr noundef %21, ptr noundef %22, i64 noundef %25) #5
  br label %27

27:                                               ; preds = %18, %0
  %28 = load ptr, ptr %5, align 8
  %29 = load ptr, ptr %2, align 8
  store ptr %28, ptr %29, align 8
  %30 = load ptr, ptr %3, align 8
  %31 = load ptr, ptr %30, align 8
  store ptr %31, ptr %8, align 8
  call void @llvm.memset.p0.i64(ptr align 16 %9, i8 0, i64 400, i1 false)
  %32 = getelementptr inbounds [100 x i32], ptr %9, i64 0, i64 0
  %33 = load ptr, ptr %8, align 8
  %34 = call i32 (ptr, i64, ptr, ...) @swprintf(ptr noundef %32, i64 noundef 99, ptr noundef @.str.2, ptr noundef %33) #5
  %35 = getelementptr inbounds [100 x i32], ptr %9, i64 0, i64 0
  call void @printWLine(ptr noundef %35)
  ret void
}

; Function Attrs: nounwind willreturn memory(read)
declare i64 @wcslen(ptr noundef) #4

; Function Attrs: nounwind
declare ptr @getenv(ptr noundef) #2

; Function Attrs: nounwind
declare ptr @wcsncat(ptr noundef, ptr noundef, i64 noundef) #2

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind willreturn memory(read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }
attributes #6 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"Ubuntu clang version 21.1.8 (6ubuntu1)"}
