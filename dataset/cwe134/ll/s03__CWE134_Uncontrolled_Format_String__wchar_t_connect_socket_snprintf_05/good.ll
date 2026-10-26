; ModuleID = 'data/C/testcases/CWE134_Uncontrolled_Format_String/s03/CWE134_Uncontrolled_Format_String__wchar_t_connect_socket_snprintf_05.c'
source_filename = "data/C/testcases/CWE134_Uncontrolled_Format_String/s03/CWE134_Uncontrolled_Format_String__wchar_t_connect_socket_snprintf_05.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.sockaddr_in = type { i16, i16, %struct.in_addr, [8 x i8] }
%struct.in_addr = type { i32 }

@staticTrue = internal global i32 1, align 4
@.str = private unnamed_addr constant [10 x i8] c"127.0.0.1\00", align 1
@staticFalse = internal global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"Benign, fixed string\00", align 1
@.str.2 = private unnamed_addr constant [3 x i32] [i32 37, i32 115, i32 0], align 4
@.str.3 = private unnamed_addr constant [16 x i32] [i32 102, i32 105, i32 120, i32 101, i32 100, i32 115, i32 116, i32 114, i32 105, i32 110, i32 103, i32 116, i32 101, i32 115, i32 116, i32 0], align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__wchar_t_connect_socket_snprintf_05_good() #0 {
  call void @goodB2G1()
  call void @goodB2G2()
  call void @goodG2B1()
  call void @goodG2B2()
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @goodB2G1() #0 {
  %1 = alloca ptr, align 8
  %2 = alloca [100 x i32], align 16
  %3 = alloca i32, align 4
  %4 = alloca %struct.sockaddr_in, align 4
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca [100 x i32], align 16
  call void @llvm.memset.p0.i64(ptr align 16 %2, i8 0, i64 400, i1 false)
  %9 = getelementptr inbounds [100 x i32], ptr %2, i64 0, i64 0
  store ptr %9, ptr %1, align 8
  %10 = load i32, ptr @staticTrue, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %77

12:                                               ; preds = %0
  store i32 -1, ptr %6, align 4
  %13 = load ptr, ptr %1, align 8
  %14 = call i64 @wcslen(ptr noundef %13) #6
  store i64 %14, ptr %7, align 8
  br label %15

15:                                               ; preds = %12
  %16 = call i32 @socket(i32 noundef 2, i32 noundef 1, i32 noundef 6) #7
  store i32 %16, ptr %6, align 4
  %17 = load i32, ptr %6, align 4
  %18 = icmp eq i32 %17, -1
  br i1 %18, label %19, label %20

19:                                               ; preds = %15
  br label %70

20:                                               ; preds = %15
  call void @llvm.memset.p0.i64(ptr align 4 %4, i8 0, i64 16, i1 false)
  %21 = getelementptr inbounds nuw %struct.sockaddr_in, ptr %4, i32 0, i32 0
  store i16 2, ptr %21, align 4
  %22 = call i32 @inet_addr(ptr noundef @.str) #7
  %23 = getelementptr inbounds nuw %struct.sockaddr_in, ptr %4, i32 0, i32 2
  %24 = getelementptr inbounds nuw %struct.in_addr, ptr %23, i32 0, i32 0
  store i32 %22, ptr %24, align 4
  %25 = call zeroext i16 @htons(i16 noundef zeroext 27015) #8
  %26 = getelementptr inbounds nuw %struct.sockaddr_in, ptr %4, i32 0, i32 1
  store i16 %25, ptr %26, align 2
  %27 = load i32, ptr %6, align 4
  %28 = call i32 @connect(i32 noundef %27, ptr noundef %4, i32 noundef 16)
  %29 = icmp eq i32 %28, -1
  br i1 %29, label %30, label %31

30:                                               ; preds = %20
  br label %70

31:                                               ; preds = %20
  %32 = load i32, ptr %6, align 4
  %33 = load ptr, ptr %1, align 8
  %34 = load i64, ptr %7, align 8
  %35 = getelementptr inbounds nuw i32, ptr %33, i64 %34
  %36 = load i64, ptr %7, align 8
  %37 = sub i64 100, %36
  %38 = sub i64 %37, 1
  %39 = mul i64 4, %38
  %40 = call i64 @recv(i32 noundef %32, ptr noundef %35, i64 noundef %39, i32 noundef 0)
  %41 = trunc i64 %40 to i32
  store i32 %41, ptr %3, align 4
  %42 = load i32, ptr %3, align 4
  %43 = icmp eq i32 %42, -1
  br i1 %43, label %47, label %44

44:                                               ; preds = %31
  %45 = load i32, ptr %3, align 4
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %44, %31
  br label %70

48:                                               ; preds = %44
  %49 = load ptr, ptr %1, align 8
  %50 = load i64, ptr %7, align 8
  %51 = load i32, ptr %3, align 4
  %52 = sext i32 %51 to i64
  %53 = udiv i64 %52, 4
  %54 = add i64 %50, %53
  %55 = getelementptr inbounds nuw i32, ptr %49, i64 %54
  store i32 0, ptr %55, align 4
  %56 = load ptr, ptr %1, align 8
  %57 = call ptr @wcschr(ptr noundef %56, i32 noundef 13) #6
  store ptr %57, ptr %5, align 8
  %58 = load ptr, ptr %5, align 8
  %59 = icmp ne ptr %58, null
  br i1 %59, label %60, label %62

60:                                               ; preds = %48
  %61 = load ptr, ptr %5, align 8
  store i32 0, ptr %61, align 4
  br label %62

62:                                               ; preds = %60, %48
  %63 = load ptr, ptr %1, align 8
  %64 = call ptr @wcschr(ptr noundef %63, i32 noundef 10) #6
  store ptr %64, ptr %5, align 8
  %65 = load ptr, ptr %5, align 8
  %66 = icmp ne ptr %65, null
  br i1 %66, label %67, label %69

67:                                               ; preds = %62
  %68 = load ptr, ptr %5, align 8
  store i32 0, ptr %68, align 4
  br label %69

69:                                               ; preds = %67, %62
  br label %70

70:                                               ; preds = %69, %47, %30, %19
  %71 = load i32, ptr %6, align 4
  %72 = icmp ne i32 %71, -1
  br i1 %72, label %73, label %76

73:                                               ; preds = %70
  %74 = load i32, ptr %6, align 4
  %75 = call i32 @close(i32 noundef %74)
  br label %76

76:                                               ; preds = %73, %70
  br label %77

77:                                               ; preds = %76, %0
  %78 = load i32, ptr @staticFalse, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %77
  call void @printLine(ptr noundef @.str.1)
  br label %86

81:                                               ; preds = %77
  call void @llvm.memset.p0.i64(ptr align 16 %8, i8 0, i64 400, i1 false)
  %82 = getelementptr inbounds [100 x i32], ptr %8, i64 0, i64 0
  %83 = load ptr, ptr %1, align 8
  %84 = call i32 (ptr, i64, ptr, ...) @swprintf(ptr noundef %82, i64 noundef 99, ptr noundef @.str.2, ptr noundef %83) #7
  %85 = getelementptr inbounds [100 x i32], ptr %8, i64 0, i64 0
  call void @printWLine(ptr noundef %85)
  br label %86

86:                                               ; preds = %81, %80
  ret void
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #1

; Function Attrs: nounwind willreturn memory(read)
declare i64 @wcslen(ptr noundef) #2

; Function Attrs: nounwind
declare i32 @socket(i32 noundef, i32 noundef, i32 noundef) #3

; Function Attrs: nounwind
declare i32 @inet_addr(ptr noundef) #3

; Function Attrs: nounwind willreturn memory(none)
declare zeroext i16 @htons(i16 noundef zeroext) #4

declare i32 @connect(i32 noundef, ptr noundef, i32 noundef) #5

declare i64 @recv(i32 noundef, ptr noundef, i64 noundef, i32 noundef) #5

; Function Attrs: nounwind willreturn memory(read)
declare ptr @wcschr(ptr noundef, i32 noundef) #2

declare i32 @close(i32 noundef) #5

declare void @printLine(ptr noundef) #5

; Function Attrs: nounwind
declare i32 @swprintf(ptr noundef, i64 noundef, ptr noundef, ...) #3

declare void @printWLine(ptr noundef) #5

; Function Attrs: noinline nounwind optnone uwtable
define internal void @goodB2G2() #0 {
  %1 = alloca ptr, align 8
  %2 = alloca [100 x i32], align 16
  %3 = alloca i32, align 4
  %4 = alloca %struct.sockaddr_in, align 4
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca [100 x i32], align 16
  call void @llvm.memset.p0.i64(ptr align 16 %2, i8 0, i64 400, i1 false)
  %9 = getelementptr inbounds [100 x i32], ptr %2, i64 0, i64 0
  store ptr %9, ptr %1, align 8
  %10 = load i32, ptr @staticTrue, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %77

12:                                               ; preds = %0
  store i32 -1, ptr %6, align 4
  %13 = load ptr, ptr %1, align 8
  %14 = call i64 @wcslen(ptr noundef %13) #6
  store i64 %14, ptr %7, align 8
  br label %15

15:                                               ; preds = %12
  %16 = call i32 @socket(i32 noundef 2, i32 noundef 1, i32 noundef 6) #7
  store i32 %16, ptr %6, align 4
  %17 = load i32, ptr %6, align 4
  %18 = icmp eq i32 %17, -1
  br i1 %18, label %19, label %20

19:                                               ; preds = %15
  br label %70

20:                                               ; preds = %15
  call void @llvm.memset.p0.i64(ptr align 4 %4, i8 0, i64 16, i1 false)
  %21 = getelementptr inbounds nuw %struct.sockaddr_in, ptr %4, i32 0, i32 0
  store i16 2, ptr %21, align 4
  %22 = call i32 @inet_addr(ptr noundef @.str) #7
  %23 = getelementptr inbounds nuw %struct.sockaddr_in, ptr %4, i32 0, i32 2
  %24 = getelementptr inbounds nuw %struct.in_addr, ptr %23, i32 0, i32 0
  store i32 %22, ptr %24, align 4
  %25 = call zeroext i16 @htons(i16 noundef zeroext 27015) #8
  %26 = getelementptr inbounds nuw %struct.sockaddr_in, ptr %4, i32 0, i32 1
  store i16 %25, ptr %26, align 2
  %27 = load i32, ptr %6, align 4
  %28 = call i32 @connect(i32 noundef %27, ptr noundef %4, i32 noundef 16)
  %29 = icmp eq i32 %28, -1
  br i1 %29, label %30, label %31

30:                                               ; preds = %20
  br label %70

31:                                               ; preds = %20
  %32 = load i32, ptr %6, align 4
  %33 = load ptr, ptr %1, align 8
  %34 = load i64, ptr %7, align 8
  %35 = getelementptr inbounds nuw i32, ptr %33, i64 %34
  %36 = load i64, ptr %7, align 8
  %37 = sub i64 100, %36
  %38 = sub i64 %37, 1
  %39 = mul i64 4, %38
  %40 = call i64 @recv(i32 noundef %32, ptr noundef %35, i64 noundef %39, i32 noundef 0)
  %41 = trunc i64 %40 to i32
  store i32 %41, ptr %3, align 4
  %42 = load i32, ptr %3, align 4
  %43 = icmp eq i32 %42, -1
  br i1 %43, label %47, label %44

44:                                               ; preds = %31
  %45 = load i32, ptr %3, align 4
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %44, %31
  br label %70

48:                                               ; preds = %44
  %49 = load ptr, ptr %1, align 8
  %50 = load i64, ptr %7, align 8
  %51 = load i32, ptr %3, align 4
  %52 = sext i32 %51 to i64
  %53 = udiv i64 %52, 4
  %54 = add i64 %50, %53
  %55 = getelementptr inbounds nuw i32, ptr %49, i64 %54
  store i32 0, ptr %55, align 4
  %56 = load ptr, ptr %1, align 8
  %57 = call ptr @wcschr(ptr noundef %56, i32 noundef 13) #6
  store ptr %57, ptr %5, align 8
  %58 = load ptr, ptr %5, align 8
  %59 = icmp ne ptr %58, null
  br i1 %59, label %60, label %62

60:                                               ; preds = %48
  %61 = load ptr, ptr %5, align 8
  store i32 0, ptr %61, align 4
  br label %62

62:                                               ; preds = %60, %48
  %63 = load ptr, ptr %1, align 8
  %64 = call ptr @wcschr(ptr noundef %63, i32 noundef 10) #6
  store ptr %64, ptr %5, align 8
  %65 = load ptr, ptr %5, align 8
  %66 = icmp ne ptr %65, null
  br i1 %66, label %67, label %69

67:                                               ; preds = %62
  %68 = load ptr, ptr %5, align 8
  store i32 0, ptr %68, align 4
  br label %69

69:                                               ; preds = %67, %62
  br label %70

70:                                               ; preds = %69, %47, %30, %19
  %71 = load i32, ptr %6, align 4
  %72 = icmp ne i32 %71, -1
  br i1 %72, label %73, label %76

73:                                               ; preds = %70
  %74 = load i32, ptr %6, align 4
  %75 = call i32 @close(i32 noundef %74)
  br label %76

76:                                               ; preds = %73, %70
  br label %77

77:                                               ; preds = %76, %0
  %78 = load i32, ptr @staticTrue, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %85

80:                                               ; preds = %77
  call void @llvm.memset.p0.i64(ptr align 16 %8, i8 0, i64 400, i1 false)
  %81 = getelementptr inbounds [100 x i32], ptr %8, i64 0, i64 0
  %82 = load ptr, ptr %1, align 8
  %83 = call i32 (ptr, i64, ptr, ...) @swprintf(ptr noundef %81, i64 noundef 99, ptr noundef @.str.2, ptr noundef %82) #7
  %84 = getelementptr inbounds [100 x i32], ptr %8, i64 0, i64 0
  call void @printWLine(ptr noundef %84)
  br label %85

85:                                               ; preds = %80, %77
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @goodG2B1() #0 {
  %1 = alloca ptr, align 8
  %2 = alloca [100 x i32], align 16
  %3 = alloca [100 x i32], align 16
  call void @llvm.memset.p0.i64(ptr align 16 %2, i8 0, i64 400, i1 false)
  %4 = getelementptr inbounds [100 x i32], ptr %2, i64 0, i64 0
  store ptr %4, ptr %1, align 8
  %5 = load i32, ptr @staticFalse, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %0
  call void @printLine(ptr noundef @.str.1)
  br label %11

8:                                                ; preds = %0
  %9 = load ptr, ptr %1, align 8
  %10 = call ptr @wcscpy(ptr noundef %9, ptr noundef @.str.3) #7
  br label %11

11:                                               ; preds = %8, %7
  %12 = load i32, ptr @staticTrue, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %11
  call void @llvm.memset.p0.i64(ptr align 16 %3, i8 0, i64 400, i1 false)
  %15 = getelementptr inbounds [100 x i32], ptr %3, i64 0, i64 0
  %16 = load ptr, ptr %1, align 8
  %17 = call i32 (ptr, i64, ptr, ...) @swprintf(ptr noundef %15, i64 noundef 99, ptr noundef %16) #7
  %18 = getelementptr inbounds [100 x i32], ptr %3, i64 0, i64 0
  call void @printWLine(ptr noundef %18)
  br label %19

19:                                               ; preds = %14, %11
  ret void
}

; Function Attrs: nounwind
declare ptr @wcscpy(ptr noundef, ptr noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define internal void @goodG2B2() #0 {
  %1 = alloca ptr, align 8
  %2 = alloca [100 x i32], align 16
  %3 = alloca [100 x i32], align 16
  call void @llvm.memset.p0.i64(ptr align 16 %2, i8 0, i64 400, i1 false)
  %4 = getelementptr inbounds [100 x i32], ptr %2, i64 0, i64 0
  store ptr %4, ptr %1, align 8
  %5 = load i32, ptr @staticTrue, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %10

7:                                                ; preds = %0
  %8 = load ptr, ptr %1, align 8
  %9 = call ptr @wcscpy(ptr noundef %8, ptr noundef @.str.3) #7
  br label %10

10:                                               ; preds = %7, %0
  %11 = load i32, ptr @staticTrue, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %10
  call void @llvm.memset.p0.i64(ptr align 16 %3, i8 0, i64 400, i1 false)
  %14 = getelementptr inbounds [100 x i32], ptr %3, i64 0, i64 0
  %15 = load ptr, ptr %1, align 8
  %16 = call i32 (ptr, i64, ptr, ...) @swprintf(ptr noundef %14, i64 noundef 99, ptr noundef %15) #7
  %17 = getelementptr inbounds [100 x i32], ptr %3, i64 0, i64 0
  call void @printWLine(ptr noundef %17)
  br label %18

18:                                               ; preds = %13, %10
  ret void
}

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
