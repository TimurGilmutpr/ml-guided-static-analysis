; ModuleID = 'data/C/testcases/CWE78_OS_Command_Injection/s01/CWE78_OS_Command_Injection__char_connect_socket_execl_07.c'
source_filename = "data/C/testcases/CWE78_OS_Command_Injection/s01/CWE78_OS_Command_Injection__char_connect_socket_execl_07.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.sockaddr_in = type { i16, i16, %struct.in_addr, [8 x i8] }
%struct.in_addr = type { i32 }

@staticFive = internal global i32 5, align 4
@.str = private unnamed_addr constant [10 x i8] c"127.0.0.1\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"/bin/sh\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"-c\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE78_OS_Command_Injection__char_connect_socket_execl_07_bad() #0 {
  %1 = alloca ptr, align 8
  %2 = alloca [100 x i8], align 16
  %3 = alloca i32, align 4
  %4 = alloca %struct.sockaddr_in, align 4
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  call void @llvm.memset.p0.i64(ptr align 16 %2, i8 0, i64 100, i1 false)
  %8 = getelementptr inbounds [100 x i8], ptr %2, i32 0, i32 0
  store i8 108, ptr %8, align 16
  %9 = getelementptr inbounds [100 x i8], ptr %2, i32 0, i32 1
  store i8 115, ptr %9, align 1
  %10 = getelementptr inbounds [100 x i8], ptr %2, i32 0, i32 2
  store i8 32, ptr %10, align 2
  %11 = getelementptr inbounds [100 x i8], ptr %2, i64 0, i64 0
  store ptr %11, ptr %1, align 8
  %12 = load i32, ptr @staticFive, align 4
  %13 = icmp eq i32 %12, 5
  br i1 %13, label %14, label %79

14:                                               ; preds = %0
  store i32 -1, ptr %6, align 4
  %15 = load ptr, ptr %1, align 8
  %16 = call i64 @strlen(ptr noundef %15) #6
  store i64 %16, ptr %7, align 8
  br label %17

17:                                               ; preds = %14
  %18 = call i32 @socket(i32 noundef 2, i32 noundef 1, i32 noundef 6) #7
  store i32 %18, ptr %6, align 4
  %19 = load i32, ptr %6, align 4
  %20 = icmp eq i32 %19, -1
  br i1 %20, label %21, label %22

21:                                               ; preds = %17
  br label %72

22:                                               ; preds = %17
  call void @llvm.memset.p0.i64(ptr align 4 %4, i8 0, i64 16, i1 false)
  %23 = getelementptr inbounds nuw %struct.sockaddr_in, ptr %4, i32 0, i32 0
  store i16 2, ptr %23, align 4
  %24 = call i32 @inet_addr(ptr noundef @.str) #7
  %25 = getelementptr inbounds nuw %struct.sockaddr_in, ptr %4, i32 0, i32 2
  %26 = getelementptr inbounds nuw %struct.in_addr, ptr %25, i32 0, i32 0
  store i32 %24, ptr %26, align 4
  %27 = call zeroext i16 @htons(i16 noundef zeroext 27015) #8
  %28 = getelementptr inbounds nuw %struct.sockaddr_in, ptr %4, i32 0, i32 1
  store i16 %27, ptr %28, align 2
  %29 = load i32, ptr %6, align 4
  %30 = call i32 @connect(i32 noundef %29, ptr noundef %4, i32 noundef 16)
  %31 = icmp eq i32 %30, -1
  br i1 %31, label %32, label %33

32:                                               ; preds = %22
  br label %72

33:                                               ; preds = %22
  %34 = load i32, ptr %6, align 4
  %35 = load ptr, ptr %1, align 8
  %36 = load i64, ptr %7, align 8
  %37 = getelementptr inbounds nuw i8, ptr %35, i64 %36
  %38 = load i64, ptr %7, align 8
  %39 = sub i64 100, %38
  %40 = sub i64 %39, 1
  %41 = mul i64 1, %40
  %42 = call i64 @recv(i32 noundef %34, ptr noundef %37, i64 noundef %41, i32 noundef 0)
  %43 = trunc i64 %42 to i32
  store i32 %43, ptr %3, align 4
  %44 = load i32, ptr %3, align 4
  %45 = icmp eq i32 %44, -1
  br i1 %45, label %49, label %46

46:                                               ; preds = %33
  %47 = load i32, ptr %3, align 4
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %46, %33
  br label %72

50:                                               ; preds = %46
  %51 = load ptr, ptr %1, align 8
  %52 = load i64, ptr %7, align 8
  %53 = load i32, ptr %3, align 4
  %54 = sext i32 %53 to i64
  %55 = udiv i64 %54, 1
  %56 = add i64 %52, %55
  %57 = getelementptr inbounds nuw i8, ptr %51, i64 %56
  store i8 0, ptr %57, align 1
  %58 = load ptr, ptr %1, align 8
  %59 = call ptr @strchr(ptr noundef %58, i32 noundef 13) #6
  store ptr %59, ptr %5, align 8
  %60 = load ptr, ptr %5, align 8
  %61 = icmp ne ptr %60, null
  br i1 %61, label %62, label %64

62:                                               ; preds = %50
  %63 = load ptr, ptr %5, align 8
  store i8 0, ptr %63, align 1
  br label %64

64:                                               ; preds = %62, %50
  %65 = load ptr, ptr %1, align 8
  %66 = call ptr @strchr(ptr noundef %65, i32 noundef 10) #6
  store ptr %66, ptr %5, align 8
  %67 = load ptr, ptr %5, align 8
  %68 = icmp ne ptr %67, null
  br i1 %68, label %69, label %71

69:                                               ; preds = %64
  %70 = load ptr, ptr %5, align 8
  store i8 0, ptr %70, align 1
  br label %71

71:                                               ; preds = %69, %64
  br label %72

72:                                               ; preds = %71, %49, %32, %21
  %73 = load i32, ptr %6, align 4
  %74 = icmp ne i32 %73, -1
  br i1 %74, label %75, label %78

75:                                               ; preds = %72
  %76 = load i32, ptr %6, align 4
  %77 = call i32 @close(i32 noundef %76)
  br label %78

78:                                               ; preds = %75, %72
  br label %79

79:                                               ; preds = %78, %0
  %80 = load ptr, ptr %1, align 8
  %81 = call i32 (ptr, ptr, ...) @execl(ptr noundef @.str.1, ptr noundef @.str.1, ptr noundef @.str.2, ptr noundef %80, ptr noundef null) #7
  ret void
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #1

; Function Attrs: nounwind willreturn memory(read)
declare i64 @strlen(ptr noundef) #2

; Function Attrs: nounwind
declare i32 @socket(i32 noundef, i32 noundef, i32 noundef) #3

; Function Attrs: nounwind
declare i32 @inet_addr(ptr noundef) #3

; Function Attrs: nounwind willreturn memory(none)
declare zeroext i16 @htons(i16 noundef zeroext) #4

declare i32 @connect(i32 noundef, ptr noundef, i32 noundef) #5

declare i64 @recv(i32 noundef, ptr noundef, i64 noundef, i32 noundef) #5

; Function Attrs: nounwind willreturn memory(read)
declare ptr @strchr(ptr noundef, i32 noundef) #2

declare i32 @close(i32 noundef) #5

; Function Attrs: nounwind
declare i32 @execl(ptr noundef, ptr noundef, ...) #3

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #2 = { nounwind willreturn memory(read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind willreturn memory(none) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind willreturn memory(read) }
attributes #7 = { nounwind }
attributes #8 = { nounwind willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"Ubuntu clang version 21.1.8 (6ubuntu1)"}
