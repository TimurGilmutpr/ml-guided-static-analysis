; ModuleID = '/home/timur/Desktop/juliet/data/C/testcases/CWE134_Uncontrolled_Format_String/s03/CWE134_Uncontrolled_Format_String__char_listen_socket_fprintf_05.c'
source_filename = "/home/timur/Desktop/juliet/data/C/testcases/CWE134_Uncontrolled_Format_String/s03/CWE134_Uncontrolled_Format_String__char_listen_socket_fprintf_05.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.sockaddr_in = type { i16, i16, %struct.in_addr, [8 x i8] }
%struct.in_addr = type { i32 }

@staticTrue = internal global i32 1, align 4
@staticFalse = internal global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"Benign, fixed string\00", align 1
@stdout = external global ptr, align 8
@.str.1 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"fixedstringtest\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__char_listen_socket_fprintf_05_good() #0 {
  call void @goodB2G1()
  call void @goodB2G2()
  call void @goodG2B1()
  call void @goodG2B2()
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @goodB2G1() #0 {
  %1 = alloca ptr, align 8
  %2 = alloca [100 x i8], align 16
  %3 = alloca i32, align 4
  %4 = alloca %struct.sockaddr_in, align 4
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  call void @llvm.memset.p0.i64(ptr align 16 %2, i8 0, i64 100, i1 false)
  %9 = getelementptr inbounds [100 x i8], ptr %2, i64 0, i64 0
  store ptr %9, ptr %1, align 8
  %10 = load i32, ptr @staticTrue, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %93

12:                                               ; preds = %0
  store i32 -1, ptr %6, align 4
  store i32 -1, ptr %7, align 4
  %13 = load ptr, ptr %1, align 8
  %14 = call i64 @strlen(ptr noundef %13) #6
  store i64 %14, ptr %8, align 8
  br label %15

15:                                               ; preds = %12
  %16 = call i32 @socket(i32 noundef 2, i32 noundef 1, i32 noundef 6) #7
  store i32 %16, ptr %6, align 4
  %17 = load i32, ptr %6, align 4
  %18 = icmp eq i32 %17, -1
  br i1 %18, label %19, label %20

19:                                               ; preds = %15
  br label %80

20:                                               ; preds = %15
  call void @llvm.memset.p0.i64(ptr align 4 %4, i8 0, i64 16, i1 false)
  %21 = getelementptr inbounds nuw %struct.sockaddr_in, ptr %4, i32 0, i32 0
  store i16 2, ptr %21, align 4
  %22 = getelementptr inbounds nuw %struct.sockaddr_in, ptr %4, i32 0, i32 2
  %23 = getelementptr inbounds nuw %struct.in_addr, ptr %22, i32 0, i32 0
  store i32 0, ptr %23, align 4
  %24 = call zeroext i16 @htons(i16 noundef zeroext 27015) #8
  %25 = getelementptr inbounds nuw %struct.sockaddr_in, ptr %4, i32 0, i32 1
  store i16 %24, ptr %25, align 2
  %26 = load i32, ptr %6, align 4
  %27 = call i32 @bind(i32 noundef %26, ptr noundef %4, i32 noundef 16) #7
  %28 = icmp eq i32 %27, -1
  br i1 %28, label %29, label %30

29:                                               ; preds = %20
  br label %80

30:                                               ; preds = %20
  %31 = load i32, ptr %6, align 4
  %32 = call i32 @listen(i32 noundef %31, i32 noundef 5) #7
  %33 = icmp eq i32 %32, -1
  br i1 %33, label %34, label %35

34:                                               ; preds = %30
  br label %80

35:                                               ; preds = %30
  %36 = load i32, ptr %6, align 4
  %37 = call i32 @accept(i32 noundef %36, ptr noundef null, ptr noundef null)
  store i32 %37, ptr %7, align 4
  %38 = load i32, ptr %7, align 4
  %39 = icmp eq i32 %38, -1
  br i1 %39, label %40, label %41

40:                                               ; preds = %35
  br label %80

41:                                               ; preds = %35
  %42 = load i32, ptr %7, align 4
  %43 = load ptr, ptr %1, align 8
  %44 = load i64, ptr %8, align 8
  %45 = getelementptr inbounds nuw i8, ptr %43, i64 %44
  %46 = load i64, ptr %8, align 8
  %47 = sub i64 100, %46
  %48 = sub i64 %47, 1
  %49 = mul i64 1, %48
  %50 = call i64 @recv(i32 noundef %42, ptr noundef %45, i64 noundef %49, i32 noundef 0)
  %51 = trunc i64 %50 to i32
  store i32 %51, ptr %3, align 4
  %52 = load i32, ptr %3, align 4
  %53 = icmp eq i32 %52, -1
  br i1 %53, label %57, label %54

54:                                               ; preds = %41
  %55 = load i32, ptr %3, align 4
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %54, %41
  br label %80

58:                                               ; preds = %54
  %59 = load ptr, ptr %1, align 8
  %60 = load i64, ptr %8, align 8
  %61 = load i32, ptr %3, align 4
  %62 = sext i32 %61 to i64
  %63 = udiv i64 %62, 1
  %64 = add i64 %60, %63
  %65 = getelementptr inbounds nuw i8, ptr %59, i64 %64
  store i8 0, ptr %65, align 1
  %66 = load ptr, ptr %1, align 8
  %67 = call ptr @strchr(ptr noundef %66, i32 noundef 13) #6
  store ptr %67, ptr %5, align 8
  %68 = load ptr, ptr %5, align 8
  %69 = icmp ne ptr %68, null
  br i1 %69, label %70, label %72

70:                                               ; preds = %58
  %71 = load ptr, ptr %5, align 8
  store i8 0, ptr %71, align 1
  br label %72

72:                                               ; preds = %70, %58
  %73 = load ptr, ptr %1, align 8
  %74 = call ptr @strchr(ptr noundef %73, i32 noundef 10) #6
  store ptr %74, ptr %5, align 8
  %75 = load ptr, ptr %5, align 8
  %76 = icmp ne ptr %75, null
  br i1 %76, label %77, label %79

77:                                               ; preds = %72
  %78 = load ptr, ptr %5, align 8
  store i8 0, ptr %78, align 1
  br label %79

79:                                               ; preds = %77, %72
  br label %80

80:                                               ; preds = %79, %57, %40, %34, %29, %19
  %81 = load i32, ptr %6, align 4
  %82 = icmp ne i32 %81, -1
  br i1 %82, label %83, label %86

83:                                               ; preds = %80
  %84 = load i32, ptr %6, align 4
  %85 = call i32 @close(i32 noundef %84)
  br label %86

86:                                               ; preds = %83, %80
  %87 = load i32, ptr %7, align 4
  %88 = icmp ne i32 %87, -1
  br i1 %88, label %89, label %92

89:                                               ; preds = %86
  %90 = load i32, ptr %7, align 4
  %91 = call i32 @close(i32 noundef %90)
  br label %92

92:                                               ; preds = %89, %86
  br label %93

93:                                               ; preds = %92, %0
  %94 = load i32, ptr @staticFalse, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %93
  call void @printLine(ptr noundef @.str)
  br label %101

97:                                               ; preds = %93
  %98 = load ptr, ptr @stdout, align 8
  %99 = load ptr, ptr %1, align 8
  %100 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %98, ptr noundef @.str.1, ptr noundef %99) #7
  br label %101

101:                                              ; preds = %97, %96
  ret void
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #1

; Function Attrs: nounwind willreturn memory(read)
declare i64 @strlen(ptr noundef) #2

; Function Attrs: nounwind
declare i32 @socket(i32 noundef, i32 noundef, i32 noundef) #3

; Function Attrs: nounwind willreturn memory(none)
declare zeroext i16 @htons(i16 noundef zeroext) #4

; Function Attrs: nounwind
declare i32 @bind(i32 noundef, ptr noundef, i32 noundef) #3

; Function Attrs: nounwind
declare i32 @listen(i32 noundef, i32 noundef) #3

declare i32 @accept(i32 noundef, ptr noundef, ptr noundef) #5

declare i64 @recv(i32 noundef, ptr noundef, i64 noundef, i32 noundef) #5

; Function Attrs: nounwind willreturn memory(read)
declare ptr @strchr(ptr noundef, i32 noundef) #2

declare i32 @close(i32 noundef) #5

declare void @printLine(ptr noundef) #5

; Function Attrs: nounwind
declare i32 @fprintf(ptr noundef, ptr noundef, ...) #3

; Function Attrs: noinline nounwind optnone uwtable
define internal void @goodB2G2() #0 {
  %1 = alloca ptr, align 8
  %2 = alloca [100 x i8], align 16
  %3 = alloca i32, align 4
  %4 = alloca %struct.sockaddr_in, align 4
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  call void @llvm.memset.p0.i64(ptr align 16 %2, i8 0, i64 100, i1 false)
  %9 = getelementptr inbounds [100 x i8], ptr %2, i64 0, i64 0
  store ptr %9, ptr %1, align 8
  %10 = load i32, ptr @staticTrue, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %93

12:                                               ; preds = %0
  store i32 -1, ptr %6, align 4
  store i32 -1, ptr %7, align 4
  %13 = load ptr, ptr %1, align 8
  %14 = call i64 @strlen(ptr noundef %13) #6
  store i64 %14, ptr %8, align 8
  br label %15

15:                                               ; preds = %12
  %16 = call i32 @socket(i32 noundef 2, i32 noundef 1, i32 noundef 6) #7
  store i32 %16, ptr %6, align 4
  %17 = load i32, ptr %6, align 4
  %18 = icmp eq i32 %17, -1
  br i1 %18, label %19, label %20

19:                                               ; preds = %15
  br label %80

20:                                               ; preds = %15
  call void @llvm.memset.p0.i64(ptr align 4 %4, i8 0, i64 16, i1 false)
  %21 = getelementptr inbounds nuw %struct.sockaddr_in, ptr %4, i32 0, i32 0
  store i16 2, ptr %21, align 4
  %22 = getelementptr inbounds nuw %struct.sockaddr_in, ptr %4, i32 0, i32 2
  %23 = getelementptr inbounds nuw %struct.in_addr, ptr %22, i32 0, i32 0
  store i32 0, ptr %23, align 4
  %24 = call zeroext i16 @htons(i16 noundef zeroext 27015) #8
  %25 = getelementptr inbounds nuw %struct.sockaddr_in, ptr %4, i32 0, i32 1
  store i16 %24, ptr %25, align 2
  %26 = load i32, ptr %6, align 4
  %27 = call i32 @bind(i32 noundef %26, ptr noundef %4, i32 noundef 16) #7
  %28 = icmp eq i32 %27, -1
  br i1 %28, label %29, label %30

29:                                               ; preds = %20
  br label %80

30:                                               ; preds = %20
  %31 = load i32, ptr %6, align 4
  %32 = call i32 @listen(i32 noundef %31, i32 noundef 5) #7
  %33 = icmp eq i32 %32, -1
  br i1 %33, label %34, label %35

34:                                               ; preds = %30
  br label %80

35:                                               ; preds = %30
  %36 = load i32, ptr %6, align 4
  %37 = call i32 @accept(i32 noundef %36, ptr noundef null, ptr noundef null)
  store i32 %37, ptr %7, align 4
  %38 = load i32, ptr %7, align 4
  %39 = icmp eq i32 %38, -1
  br i1 %39, label %40, label %41

40:                                               ; preds = %35
  br label %80

41:                                               ; preds = %35
  %42 = load i32, ptr %7, align 4
  %43 = load ptr, ptr %1, align 8
  %44 = load i64, ptr %8, align 8
  %45 = getelementptr inbounds nuw i8, ptr %43, i64 %44
  %46 = load i64, ptr %8, align 8
  %47 = sub i64 100, %46
  %48 = sub i64 %47, 1
  %49 = mul i64 1, %48
  %50 = call i64 @recv(i32 noundef %42, ptr noundef %45, i64 noundef %49, i32 noundef 0)
  %51 = trunc i64 %50 to i32
  store i32 %51, ptr %3, align 4
  %52 = load i32, ptr %3, align 4
  %53 = icmp eq i32 %52, -1
  br i1 %53, label %57, label %54

54:                                               ; preds = %41
  %55 = load i32, ptr %3, align 4
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %54, %41
  br label %80

58:                                               ; preds = %54
  %59 = load ptr, ptr %1, align 8
  %60 = load i64, ptr %8, align 8
  %61 = load i32, ptr %3, align 4
  %62 = sext i32 %61 to i64
  %63 = udiv i64 %62, 1
  %64 = add i64 %60, %63
  %65 = getelementptr inbounds nuw i8, ptr %59, i64 %64
  store i8 0, ptr %65, align 1
  %66 = load ptr, ptr %1, align 8
  %67 = call ptr @strchr(ptr noundef %66, i32 noundef 13) #6
  store ptr %67, ptr %5, align 8
  %68 = load ptr, ptr %5, align 8
  %69 = icmp ne ptr %68, null
  br i1 %69, label %70, label %72

70:                                               ; preds = %58
  %71 = load ptr, ptr %5, align 8
  store i8 0, ptr %71, align 1
  br label %72

72:                                               ; preds = %70, %58
  %73 = load ptr, ptr %1, align 8
  %74 = call ptr @strchr(ptr noundef %73, i32 noundef 10) #6
  store ptr %74, ptr %5, align 8
  %75 = load ptr, ptr %5, align 8
  %76 = icmp ne ptr %75, null
  br i1 %76, label %77, label %79

77:                                               ; preds = %72
  %78 = load ptr, ptr %5, align 8
  store i8 0, ptr %78, align 1
  br label %79

79:                                               ; preds = %77, %72
  br label %80

80:                                               ; preds = %79, %57, %40, %34, %29, %19
  %81 = load i32, ptr %6, align 4
  %82 = icmp ne i32 %81, -1
  br i1 %82, label %83, label %86

83:                                               ; preds = %80
  %84 = load i32, ptr %6, align 4
  %85 = call i32 @close(i32 noundef %84)
  br label %86

86:                                               ; preds = %83, %80
  %87 = load i32, ptr %7, align 4
  %88 = icmp ne i32 %87, -1
  br i1 %88, label %89, label %92

89:                                               ; preds = %86
  %90 = load i32, ptr %7, align 4
  %91 = call i32 @close(i32 noundef %90)
  br label %92

92:                                               ; preds = %89, %86
  br label %93

93:                                               ; preds = %92, %0
  %94 = load i32, ptr @staticTrue, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %100

96:                                               ; preds = %93
  %97 = load ptr, ptr @stdout, align 8
  %98 = load ptr, ptr %1, align 8
  %99 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %97, ptr noundef @.str.1, ptr noundef %98) #7
  br label %100

100:                                              ; preds = %96, %93
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @goodG2B1() #0 {
  %1 = alloca ptr, align 8
  %2 = alloca [100 x i8], align 16
  call void @llvm.memset.p0.i64(ptr align 16 %2, i8 0, i64 100, i1 false)
  %3 = getelementptr inbounds [100 x i8], ptr %2, i64 0, i64 0
  store ptr %3, ptr %1, align 8
  %4 = load i32, ptr @staticFalse, align 4
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %0
  call void @printLine(ptr noundef @.str)
  br label %10

7:                                                ; preds = %0
  %8 = load ptr, ptr %1, align 8
  %9 = call ptr @strcpy(ptr noundef %8, ptr noundef @.str.2) #7
  br label %10

10:                                               ; preds = %7, %6
  %11 = load i32, ptr @staticTrue, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %10
  %14 = load ptr, ptr @stdout, align 8
  %15 = load ptr, ptr %1, align 8
  %16 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %14, ptr noundef %15) #7
  br label %17

17:                                               ; preds = %13, %10
  ret void
}

; Function Attrs: nounwind
declare ptr @strcpy(ptr noundef, ptr noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define internal void @goodG2B2() #0 {
  %1 = alloca ptr, align 8
  %2 = alloca [100 x i8], align 16
  call void @llvm.memset.p0.i64(ptr align 16 %2, i8 0, i64 100, i1 false)
  %3 = getelementptr inbounds [100 x i8], ptr %2, i64 0, i64 0
  store ptr %3, ptr %1, align 8
  %4 = load i32, ptr @staticTrue, align 4
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %6, label %9

6:                                                ; preds = %0
  %7 = load ptr, ptr %1, align 8
  %8 = call ptr @strcpy(ptr noundef %7, ptr noundef @.str.2) #7
  br label %9

9:                                                ; preds = %6, %0
  %10 = load i32, ptr @staticTrue, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %9
  %13 = load ptr, ptr @stdout, align 8
  %14 = load ptr, ptr %1, align 8
  %15 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %13, ptr noundef %14) #7
  br label %16

16:                                               ; preds = %12, %9
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
