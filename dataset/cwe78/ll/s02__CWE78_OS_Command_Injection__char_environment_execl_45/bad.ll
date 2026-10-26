; ModuleID = 'data/C/testcases/CWE78_OS_Command_Injection/s02/CWE78_OS_Command_Injection__char_environment_execl_45.c'
source_filename = "data/C/testcases/CWE78_OS_Command_Injection/s02/CWE78_OS_Command_Injection__char_environment_execl_45.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"ADD\00", align 1
@CWE78_OS_Command_Injection__char_environment_execl_45_badData = internal global ptr null, align 8
@.str.1 = private unnamed_addr constant [8 x i8] c"/bin/sh\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"-c\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE78_OS_Command_Injection__char_environment_execl_45_bad() #0 {
  %1 = alloca ptr, align 8
  %2 = alloca [100 x i8], align 16
  %3 = alloca i64, align 8
  %4 = alloca ptr, align 8
  call void @llvm.memset.p0.i64(ptr align 16 %2, i8 0, i64 100, i1 false)
  %5 = getelementptr inbounds [100 x i8], ptr %2, i32 0, i32 0
  store i8 108, ptr %5, align 16
  %6 = getelementptr inbounds [100 x i8], ptr %2, i32 0, i32 1
  store i8 115, ptr %6, align 1
  %7 = getelementptr inbounds [100 x i8], ptr %2, i32 0, i32 2
  store i8 32, ptr %7, align 2
  %8 = getelementptr inbounds [100 x i8], ptr %2, i64 0, i64 0
  store ptr %8, ptr %1, align 8
  %9 = load ptr, ptr %1, align 8
  %10 = call i64 @strlen(ptr noundef %9) #4
  store i64 %10, ptr %3, align 8
  %11 = call ptr @getenv(ptr noundef @.str) #5
  store ptr %11, ptr %4, align 8
  %12 = load ptr, ptr %4, align 8
  %13 = icmp ne ptr %12, null
  br i1 %13, label %14, label %23

14:                                               ; preds = %0
  %15 = load ptr, ptr %1, align 8
  %16 = load i64, ptr %3, align 8
  %17 = getelementptr inbounds nuw i8, ptr %15, i64 %16
  %18 = load ptr, ptr %4, align 8
  %19 = load i64, ptr %3, align 8
  %20 = sub i64 100, %19
  %21 = sub i64 %20, 1
  %22 = call ptr @strncat(ptr noundef %17, ptr noundef %18, i64 noundef %21) #5
  br label %23

23:                                               ; preds = %14, %0
  %24 = load ptr, ptr %1, align 8
  store ptr %24, ptr @CWE78_OS_Command_Injection__char_environment_execl_45_badData, align 8
  call void @badSink()
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

; Function Attrs: noinline nounwind optnone uwtable
define internal void @badSink() #0 {
  %1 = alloca ptr, align 8
  %2 = load ptr, ptr @CWE78_OS_Command_Injection__char_environment_execl_45_badData, align 8
  store ptr %2, ptr %1, align 8
  %3 = load ptr, ptr %1, align 8
  %4 = call i32 (ptr, ptr, ...) @execl(ptr noundef @.str.1, ptr noundef @.str.1, ptr noundef @.str.2, ptr noundef %3, ptr noundef null) #5
  ret void
}

; Function Attrs: nounwind
declare i32 @execl(ptr noundef, ptr noundef, ...) #3

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #2 = { nounwind willreturn memory(read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind willreturn memory(read) }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"Ubuntu clang version 21.1.8 (6ubuntu1)"}
