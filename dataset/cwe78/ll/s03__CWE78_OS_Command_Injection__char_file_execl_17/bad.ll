; ModuleID = 'data/C/testcases/CWE78_OS_Command_Injection/s03/CWE78_OS_Command_Injection__char_file_execl_17.c'
source_filename = "data/C/testcases/CWE78_OS_Command_Injection/s03/CWE78_OS_Command_Injection__char_file_execl_17.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [14 x i8] c"/tmp/file.txt\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"fgets() failed\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"/bin/sh\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"-c\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE78_OS_Command_Injection__char_file_execl_17_bad() #0 {
  %1 = alloca i32, align 4
  %2 = alloca ptr, align 8
  %3 = alloca [100 x i8], align 16
  %4 = alloca i64, align 8
  %5 = alloca ptr, align 8
  call void @llvm.memset.p0.i64(ptr align 16 %3, i8 0, i64 100, i1 false)
  %6 = getelementptr inbounds [100 x i8], ptr %3, i32 0, i32 0
  store i8 108, ptr %6, align 16
  %7 = getelementptr inbounds [100 x i8], ptr %3, i32 0, i32 1
  store i8 115, ptr %7, align 1
  %8 = getelementptr inbounds [100 x i8], ptr %3, i32 0, i32 2
  store i8 32, ptr %8, align 2
  %9 = getelementptr inbounds [100 x i8], ptr %3, i64 0, i64 0
  store ptr %9, ptr %2, align 8
  store i32 0, ptr %1, align 4
  br label %10

10:                                               ; preds = %42, %0
  %11 = load i32, ptr %1, align 4
  %12 = icmp slt i32 %11, 1
  br i1 %12, label %13, label %45

13:                                               ; preds = %10
  %14 = load ptr, ptr %2, align 8
  %15 = call i64 @strlen(ptr noundef %14) #5
  store i64 %15, ptr %4, align 8
  %16 = load i64, ptr %4, align 8
  %17 = sub i64 100, %16
  %18 = icmp ugt i64 %17, 1
  br i1 %18, label %19, label %41

19:                                               ; preds = %13
  %20 = call noalias ptr @fopen(ptr noundef @.str, ptr noundef @.str.1)
  store ptr %20, ptr %5, align 8
  %21 = load ptr, ptr %5, align 8
  %22 = icmp ne ptr %21, null
  br i1 %22, label %23, label %40

23:                                               ; preds = %19
  %24 = load ptr, ptr %2, align 8
  %25 = load i64, ptr %4, align 8
  %26 = getelementptr inbounds nuw i8, ptr %24, i64 %25
  %27 = load i64, ptr %4, align 8
  %28 = sub i64 100, %27
  %29 = trunc i64 %28 to i32
  %30 = load ptr, ptr %5, align 8
  %31 = call ptr @fgets(ptr noundef %26, i32 noundef %29, ptr noundef %30)
  %32 = icmp eq ptr %31, null
  br i1 %32, label %33, label %37

33:                                               ; preds = %23
  call void @printLine(ptr noundef @.str.2)
  %34 = load ptr, ptr %2, align 8
  %35 = load i64, ptr %4, align 8
  %36 = getelementptr inbounds nuw i8, ptr %34, i64 %35
  store i8 0, ptr %36, align 1
  br label %37

37:                                               ; preds = %33, %23
  %38 = load ptr, ptr %5, align 8
  %39 = call i32 @fclose(ptr noundef %38)
  br label %40

40:                                               ; preds = %37, %19
  br label %41

41:                                               ; preds = %40, %13
  br label %42

42:                                               ; preds = %41
  %43 = load i32, ptr %1, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, ptr %1, align 4
  br label %10, !llvm.loop !6

45:                                               ; preds = %10
  %46 = load ptr, ptr %2, align 8
  %47 = call i32 (ptr, ptr, ...) @execl(ptr noundef @.str.3, ptr noundef @.str.3, ptr noundef @.str.4, ptr noundef %46, ptr noundef null) #6
  ret void
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #1

; Function Attrs: nounwind willreturn memory(read)
declare i64 @strlen(ptr noundef) #2

declare noalias ptr @fopen(ptr noundef, ptr noundef) #3

declare ptr @fgets(ptr noundef, i32 noundef, ptr noundef) #3

declare void @printLine(ptr noundef) #3

declare i32 @fclose(ptr noundef) #3

; Function Attrs: nounwind
declare i32 @execl(ptr noundef, ptr noundef, ...) #4

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #2 = { nounwind willreturn memory(read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind willreturn memory(read) }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"Ubuntu clang version 21.1.8 (6ubuntu1)"}
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
