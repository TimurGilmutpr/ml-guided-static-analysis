; ModuleID = 'data/C/testcases/CWE134_Uncontrolled_Format_String/s04/CWE134_Uncontrolled_Format_String__wchar_t_console_fprintf_34.c'
source_filename = "data/C/testcases/CWE134_Uncontrolled_Format_String/s04/CWE134_Uncontrolled_Format_String__wchar_t_console_fprintf_34.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%union.CWE134_Uncontrolled_Format_String__wchar_t_console_fprintf_34_unionType = type { ptr }

@.str = private unnamed_addr constant [16 x i32] [i32 102, i32 105, i32 120, i32 101, i32 100, i32 115, i32 116, i32 114, i32 105, i32 110, i32 103, i32 116, i32 101, i32 115, i32 116, i32 0], align 4
@stdout = external global ptr, align 8
@stdin = external global ptr, align 8
@.str.1 = private unnamed_addr constant [16 x i8] c"fgetws() failed\00", align 1
@.str.2 = private unnamed_addr constant [4 x i32] [i32 37, i32 115, i32 10, i32 0], align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__wchar_t_console_fprintf_34_good() #0 {
  call void @goodG2B()
  call void @goodB2G()
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @goodG2B() #0 {
  %1 = alloca ptr, align 8
  %2 = alloca %union.CWE134_Uncontrolled_Format_String__wchar_t_console_fprintf_34_unionType, align 8
  %3 = alloca [100 x i32], align 16
  %4 = alloca ptr, align 8
  call void @llvm.memset.p0.i64(ptr align 16 %3, i8 0, i64 400, i1 false)
  %5 = getelementptr inbounds [100 x i32], ptr %3, i64 0, i64 0
  store ptr %5, ptr %1, align 8
  %6 = load ptr, ptr %1, align 8
  %7 = call ptr @wcscpy(ptr noundef %6, ptr noundef @.str) #5
  %8 = load ptr, ptr %1, align 8
  store ptr %8, ptr %2, align 8
  %9 = load ptr, ptr %2, align 8
  store ptr %9, ptr %4, align 8
  %10 = load ptr, ptr @stdout, align 8
  %11 = load ptr, ptr %4, align 8
  %12 = call i32 (ptr, ptr, ...) @fwprintf(ptr noundef %10, ptr noundef %11)
  ret void
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #1

; Function Attrs: nounwind
declare ptr @wcscpy(ptr noundef, ptr noundef) #2

declare i32 @fwprintf(ptr noundef, ptr noundef, ...) #3

; Function Attrs: noinline nounwind optnone uwtable
define internal void @goodB2G() #0 {
  %1 = alloca ptr, align 8
  %2 = alloca %union.CWE134_Uncontrolled_Format_String__wchar_t_console_fprintf_34_unionType, align 8
  %3 = alloca [100 x i32], align 16
  %4 = alloca i64, align 8
  %5 = alloca ptr, align 8
  call void @llvm.memset.p0.i64(ptr align 16 %3, i8 0, i64 400, i1 false)
  %6 = getelementptr inbounds [100 x i32], ptr %3, i64 0, i64 0
  store ptr %6, ptr %1, align 8
  %7 = load ptr, ptr %1, align 8
  %8 = call i64 @wcslen(ptr noundef %7) #6
  store i64 %8, ptr %4, align 8
  %9 = load i64, ptr %4, align 8
  %10 = sub i64 100, %9
  %11 = icmp ugt i64 %10, 1
  br i1 %11, label %12, label %45

12:                                               ; preds = %0
  %13 = load ptr, ptr %1, align 8
  %14 = load i64, ptr %4, align 8
  %15 = getelementptr inbounds nuw i32, ptr %13, i64 %14
  %16 = load i64, ptr %4, align 8
  %17 = sub i64 100, %16
  %18 = trunc i64 %17 to i32
  %19 = load ptr, ptr @stdin, align 8
  %20 = call ptr @fgetws(ptr noundef %15, i32 noundef %18, ptr noundef %19)
  %21 = icmp ne ptr %20, null
  br i1 %21, label %22, label %40

22:                                               ; preds = %12
  %23 = load ptr, ptr %1, align 8
  %24 = call i64 @wcslen(ptr noundef %23) #6
  store i64 %24, ptr %4, align 8
  %25 = load i64, ptr %4, align 8
  %26 = icmp ugt i64 %25, 0
  br i1 %26, label %27, label %39

27:                                               ; preds = %22
  %28 = load ptr, ptr %1, align 8
  %29 = load i64, ptr %4, align 8
  %30 = sub i64 %29, 1
  %31 = getelementptr inbounds nuw i32, ptr %28, i64 %30
  %32 = load i32, ptr %31, align 4
  %33 = icmp eq i32 %32, 10
  br i1 %33, label %34, label %39

34:                                               ; preds = %27
  %35 = load ptr, ptr %1, align 8
  %36 = load i64, ptr %4, align 8
  %37 = sub i64 %36, 1
  %38 = getelementptr inbounds nuw i32, ptr %35, i64 %37
  store i32 0, ptr %38, align 4
  br label %39

39:                                               ; preds = %34, %27, %22
  br label %44

40:                                               ; preds = %12
  call void @printLine(ptr noundef @.str.1)
  %41 = load ptr, ptr %1, align 8
  %42 = load i64, ptr %4, align 8
  %43 = getelementptr inbounds nuw i32, ptr %41, i64 %42
  store i32 0, ptr %43, align 4
  br label %44

44:                                               ; preds = %40, %39
  br label %45

45:                                               ; preds = %44, %0
  %46 = load ptr, ptr %1, align 8
  store ptr %46, ptr %2, align 8
  %47 = load ptr, ptr %2, align 8
  store ptr %47, ptr %5, align 8
  %48 = load ptr, ptr @stdout, align 8
  %49 = load ptr, ptr %5, align 8
  %50 = call i32 (ptr, ptr, ...) @fwprintf(ptr noundef %48, ptr noundef @.str.2, ptr noundef %49)
  ret void
}

; Function Attrs: nounwind willreturn memory(read)
declare i64 @wcslen(ptr noundef) #4

declare ptr @fgetws(ptr noundef, i32 noundef, ptr noundef) #3

declare void @printLine(ptr noundef) #3

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
