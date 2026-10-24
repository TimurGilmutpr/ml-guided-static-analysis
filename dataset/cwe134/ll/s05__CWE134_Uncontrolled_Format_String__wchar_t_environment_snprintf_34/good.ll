; ModuleID = '/home/timur/Desktop/juliet/data/C/testcases/CWE134_Uncontrolled_Format_String/s05/CWE134_Uncontrolled_Format_String__wchar_t_environment_snprintf_34.c'
source_filename = "/home/timur/Desktop/juliet/data/C/testcases/CWE134_Uncontrolled_Format_String/s05/CWE134_Uncontrolled_Format_String__wchar_t_environment_snprintf_34.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%union.CWE134_Uncontrolled_Format_String__wchar_t_environment_snprintf_34_unionType = type { ptr }

@.str = private unnamed_addr constant [16 x i32] [i32 102, i32 105, i32 120, i32 101, i32 100, i32 115, i32 116, i32 114, i32 105, i32 110, i32 103, i32 116, i32 101, i32 115, i32 116, i32 0], align 4
@.str.1 = private unnamed_addr constant [4 x i32] [i32 65, i32 68, i32 68, i32 0], align 4
@.str.2 = private unnamed_addr constant [3 x i32] [i32 37, i32 115, i32 0], align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__wchar_t_environment_snprintf_34_good() #0 {
  call void @goodG2B()
  call void @goodB2G()
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @goodG2B() #0 {
  %1 = alloca ptr, align 8
  %2 = alloca %union.CWE134_Uncontrolled_Format_String__wchar_t_environment_snprintf_34_unionType, align 8
  %3 = alloca [100 x i32], align 16
  %4 = alloca ptr, align 8
  %5 = alloca [100 x i32], align 16
  call void @llvm.memset.p0.i64(ptr align 16 %3, i8 0, i64 400, i1 false)
  %6 = getelementptr inbounds [100 x i32], ptr %3, i64 0, i64 0
  store ptr %6, ptr %1, align 8
  %7 = load ptr, ptr %1, align 8
  %8 = call ptr @wcscpy(ptr noundef %7, ptr noundef @.str) #5
  %9 = load ptr, ptr %1, align 8
  store ptr %9, ptr %2, align 8
  %10 = load ptr, ptr %2, align 8
  store ptr %10, ptr %4, align 8
  call void @llvm.memset.p0.i64(ptr align 16 %5, i8 0, i64 400, i1 false)
  %11 = getelementptr inbounds [100 x i32], ptr %5, i64 0, i64 0
  %12 = load ptr, ptr %4, align 8
  %13 = call i32 (ptr, i64, ptr, ...) @swprintf(ptr noundef %11, i64 noundef 99, ptr noundef %12) #5
  %14 = getelementptr inbounds [100 x i32], ptr %5, i64 0, i64 0
  call void @printWLine(ptr noundef %14)
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
  %2 = alloca %union.CWE134_Uncontrolled_Format_String__wchar_t_environment_snprintf_34_unionType, align 8
  %3 = alloca [100 x i32], align 16
  %4 = alloca i64, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca [100 x i32], align 16
  call void @llvm.memset.p0.i64(ptr align 16 %3, i8 0, i64 400, i1 false)
  %8 = getelementptr inbounds [100 x i32], ptr %3, i64 0, i64 0
  store ptr %8, ptr %1, align 8
  %9 = load ptr, ptr %1, align 8
  %10 = call i64 @wcslen(ptr noundef %9) #6
  store i64 %10, ptr %4, align 8
  %11 = call ptr @getenv(ptr noundef @.str.1) #5
  store ptr %11, ptr %5, align 8
  %12 = load ptr, ptr %5, align 8
  %13 = icmp ne ptr %12, null
  br i1 %13, label %14, label %23

14:                                               ; preds = %0
  %15 = load ptr, ptr %1, align 8
  %16 = load i64, ptr %4, align 8
  %17 = getelementptr inbounds nuw i32, ptr %15, i64 %16
  %18 = load ptr, ptr %5, align 8
  %19 = load i64, ptr %4, align 8
  %20 = sub i64 100, %19
  %21 = sub i64 %20, 1
  %22 = call ptr @wcsncat(ptr noundef %17, ptr noundef %18, i64 noundef %21) #5
  br label %23

23:                                               ; preds = %14, %0
  %24 = load ptr, ptr %1, align 8
  store ptr %24, ptr %2, align 8
  %25 = load ptr, ptr %2, align 8
  store ptr %25, ptr %6, align 8
  call void @llvm.memset.p0.i64(ptr align 16 %7, i8 0, i64 400, i1 false)
  %26 = getelementptr inbounds [100 x i32], ptr %7, i64 0, i64 0
  %27 = load ptr, ptr %6, align 8
  %28 = call i32 (ptr, i64, ptr, ...) @swprintf(ptr noundef %26, i64 noundef 99, ptr noundef @.str.2, ptr noundef %27) #5
  %29 = getelementptr inbounds [100 x i32], ptr %7, i64 0, i64 0
  call void @printWLine(ptr noundef %29)
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
