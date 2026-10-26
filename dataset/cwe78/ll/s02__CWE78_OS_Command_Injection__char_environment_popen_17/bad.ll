; ModuleID = 'data/C/testcases/CWE78_OS_Command_Injection/s02/CWE78_OS_Command_Injection__char_environment_popen_17.c'
source_filename = "data/C/testcases/CWE78_OS_Command_Injection/s02/CWE78_OS_Command_Injection__char_environment_popen_17.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"ADD\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"w\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE78_OS_Command_Injection__char_environment_popen_17_bad() #0 {
  %1 = alloca i32, align 4
  %2 = alloca ptr, align 8
  %3 = alloca [100 x i8], align 16
  %4 = alloca i64, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  call void @llvm.memset.p0.i64(ptr align 16 %3, i8 0, i64 100, i1 false)
  %7 = getelementptr inbounds [100 x i8], ptr %3, i32 0, i32 0
  store i8 108, ptr %7, align 16
  %8 = getelementptr inbounds [100 x i8], ptr %3, i32 0, i32 1
  store i8 115, ptr %8, align 1
  %9 = getelementptr inbounds [100 x i8], ptr %3, i32 0, i32 2
  store i8 32, ptr %9, align 2
  %10 = getelementptr inbounds [100 x i8], ptr %3, i64 0, i64 0
  store ptr %10, ptr %2, align 8
  store i32 0, ptr %1, align 4
  br label %11

11:                                               ; preds = %30, %0
  %12 = load i32, ptr %1, align 4
  %13 = icmp slt i32 %12, 1
  br i1 %13, label %14, label %33

14:                                               ; preds = %11
  %15 = load ptr, ptr %2, align 8
  %16 = call i64 @strlen(ptr noundef %15) #5
  store i64 %16, ptr %4, align 8
  %17 = call ptr @getenv(ptr noundef @.str) #6
  store ptr %17, ptr %5, align 8
  %18 = load ptr, ptr %5, align 8
  %19 = icmp ne ptr %18, null
  br i1 %19, label %20, label %29

20:                                               ; preds = %14
  %21 = load ptr, ptr %2, align 8
  %22 = load i64, ptr %4, align 8
  %23 = getelementptr inbounds nuw i8, ptr %21, i64 %22
  %24 = load ptr, ptr %5, align 8
  %25 = load i64, ptr %4, align 8
  %26 = sub i64 100, %25
  %27 = sub i64 %26, 1
  %28 = call ptr @strncat(ptr noundef %23, ptr noundef %24, i64 noundef %27) #6
  br label %29

29:                                               ; preds = %20, %14
  br label %30

30:                                               ; preds = %29
  %31 = load i32, ptr %1, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, ptr %1, align 4
  br label %11, !llvm.loop !6

33:                                               ; preds = %11
  %34 = load ptr, ptr %2, align 8
  %35 = call noalias ptr @popen(ptr noundef %34, ptr noundef @.str.1)
  store ptr %35, ptr %6, align 8
  %36 = load ptr, ptr %6, align 8
  %37 = icmp ne ptr %36, null
  br i1 %37, label %38, label %41

38:                                               ; preds = %33
  %39 = load ptr, ptr %6, align 8
  %40 = call i32 @pclose(ptr noundef %39)
  br label %41

41:                                               ; preds = %38, %33
  ret void
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #1

; Function Attrs: nounwind willreturn memory(read)
declare i64 @strlen(ptr noundef) #2

; Function Attrs: nounwind
declare ptr @getenv(ptr noundef) #3

; Function Attrs: nounwind
declare ptr @strncat(ptr noundef, ptr noundef, i64 noundef) #3

declare noalias ptr @popen(ptr noundef, ptr noundef) #4

declare i32 @pclose(ptr noundef) #4

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #2 = { nounwind willreturn memory(read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
