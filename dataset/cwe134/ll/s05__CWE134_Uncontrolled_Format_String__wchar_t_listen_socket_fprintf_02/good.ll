; ModuleID = '/home/timur/Desktop/juliet/data/C/testcases/CWE134_Uncontrolled_Format_String/s05/CWE134_Uncontrolled_Format_String__wchar_t_listen_socket_fprintf_02.c'
source_filename = "/home/timur/Desktop/juliet/data/C/testcases/CWE134_Uncontrolled_Format_String/s05/CWE134_Uncontrolled_Format_String__wchar_t_listen_socket_fprintf_02.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.sockaddr_in = type { i16, i16, %struct.in_addr, [8 x i8] }
%struct.in_addr = type { i32 }

@stdout = external global ptr, align 8
@.str = private unnamed_addr constant [4 x i32] [i32 37, i32 115, i32 10, i32 0], align 4
@.str.1 = private unnamed_addr constant [16 x i32] [i32 102, i32 105, i32 120, i32 101, i32 100, i32 115, i32 116, i32 114, i32 105, i32 110, i32 103, i32 116, i32 101, i32 115, i32 116, i32 0], align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__wchar_t_listen_socket_fprintf_02_good() #0 {
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
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  call void @llvm.memset.p0.i64(ptr align 16 %2, i8 0, i64 400, i1 false)
  %9 = getelementptr inbounds [100 x i32], ptr %2, i64 0, i64 0
  store ptr %9, ptr %1, align 8
  store i32 -1, ptr %6, align 4
  store i32 -1, ptr %7, align 4
  %10 = load ptr, ptr %1, align 8
  %11 = call i64 @wcslen(ptr noundef %10) #6
  store i64 %11, ptr %8, align 8
  br label %12

12:                                               ; preds = %0
  %13 = call i32 @socket(i32 noundef 2, i32 noundef 1, i32 noundef 6) #7
  store i32 %13, ptr %6, align 4
  %14 = load i32, ptr %6, align 4
  %15 = icmp eq i32 %14, -1
  br i1 %15, label %16, label %17

16:                                               ; preds = %12
  br label %77

17:                                               ; preds = %12
  call void @llvm.memset.p0.i64(ptr align 4 %4, i8 0, i64 16, i1 false)
  %18 = getelementptr inbounds nuw %struct.sockaddr_in, ptr %4, i32 0, i32 0
  store i16 2, ptr %18, align 4
  %19 = getelementptr inbounds nuw %struct.sockaddr_in, ptr %4, i32 0, i32 2
  %20 = getelementptr inbounds nuw %struct.in_addr, ptr %19, i32 0, i32 0
  store i32 0, ptr %20, align 4
  %21 = call zeroext i16 @htons(i16 noundef zeroext 27015) #8
  %22 = getelementptr inbounds nuw %struct.sockaddr_in, ptr %4, i32 0, i32 1
  store i16 %21, ptr %22, align 2
  %23 = load i32, ptr %6, align 4
  %24 = call i32 @bind(i32 noundef %23, ptr noundef %4, i32 noundef 16) #7
  %25 = icmp eq i32 %24, -1
  br i1 %25, label %26, label %27

26:                                               ; preds = %17
  br label %77

27:                                               ; preds = %17
  %28 = load i32, ptr %6, align 4
  %29 = call i32 @listen(i32 noundef %28, i32 noundef 5) #7
  %30 = icmp eq i32 %29, -1
  br i1 %30, label %31, label %32

31:                                               ; preds = %27
  br label %77

32:                                               ; preds = %27
  %33 = load i32, ptr %6, align 4
  %34 = call i32 @accept(i32 noundef %33, ptr noundef null, ptr noundef null)
  store i32 %34, ptr %7, align 4
  %35 = load i32, ptr %7, align 4
  %36 = icmp eq i32 %35, -1
  br i1 %36, label %37, label %38

37:                                               ; preds = %32
  br label %77

38:                                               ; preds = %32
  %39 = load i32, ptr %7, align 4
  %40 = load ptr, ptr %1, align 8
  %41 = load i64, ptr %8, align 8
  %42 = getelementptr inbounds nuw i32, ptr %40, i64 %41
  %43 = load i64, ptr %8, align 8
  %44 = sub i64 100, %43
  %45 = sub i64 %44, 1
  %46 = mul i64 4, %45
  %47 = call i64 @recv(i32 noundef %39, ptr noundef %42, i64 noundef %46, i32 noundef 0)
  %48 = trunc i64 %47 to i32
  store i32 %48, ptr %3, align 4
  %49 = load i32, ptr %3, align 4
  %50 = icmp eq i32 %49, -1
  br i1 %50, label %54, label %51

51:                                               ; preds = %38
  %52 = load i32, ptr %3, align 4
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %51, %38
  br label %77

55:                                               ; preds = %51
  %56 = load ptr, ptr %1, align 8
  %57 = load i64, ptr %8, align 8
  %58 = load i32, ptr %3, align 4
  %59 = sext i32 %58 to i64
  %60 = udiv i64 %59, 4
  %61 = add i64 %57, %60
  %62 = getelementptr inbounds nuw i32, ptr %56, i64 %61
  store i32 0, ptr %62, align 4
  %63 = load ptr, ptr %1, align 8
  %64 = call ptr @wcschr(ptr noundef %63, i32 noundef 13) #6
  store ptr %64, ptr %5, align 8
  %65 = load ptr, ptr %5, align 8
  %66 = icmp ne ptr %65, null
  br i1 %66, label %67, label %69

67:                                               ; preds = %55
  %68 = load ptr, ptr %5, align 8
  store i32 0, ptr %68, align 4
  br label %69

69:                                               ; preds = %67, %55
  %70 = load ptr, ptr %1, align 8
  %71 = call ptr @wcschr(ptr noundef %70, i32 noundef 10) #6
  store ptr %71, ptr %5, align 8
  %72 = load ptr, ptr %5, align 8
  %73 = icmp ne ptr %72, null
  br i1 %73, label %74, label %76

74:                                               ; preds = %69
  %75 = load ptr, ptr %5, align 8
  store i32 0, ptr %75, align 4
  br label %76

76:                                               ; preds = %74, %69
  br label %77

77:                                               ; preds = %76, %54, %37, %31, %26, %16
  %78 = load i32, ptr %6, align 4
  %79 = icmp ne i32 %78, -1
  br i1 %79, label %80, label %83

80:                                               ; preds = %77
  %81 = load i32, ptr %6, align 4
  %82 = call i32 @close(i32 noundef %81)
  br label %83

83:                                               ; preds = %80, %77
  %84 = load i32, ptr %7, align 4
  %85 = icmp ne i32 %84, -1
  br i1 %85, label %86, label %89

86:                                               ; preds = %83
  %87 = load i32, ptr %7, align 4
  %88 = call i32 @close(i32 noundef %87)
  br label %89

89:                                               ; preds = %86, %83
  %90 = load ptr, ptr @stdout, align 8
  %91 = load ptr, ptr %1, align 8
  %92 = call i32 (ptr, ptr, ...) @fwprintf(ptr noundef %90, ptr noundef @.str, ptr noundef %91)
  ret void
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #1

; Function Attrs: nounwind willreturn memory(read)
declare i64 @wcslen(ptr noundef) #2

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
declare ptr @wcschr(ptr noundef, i32 noundef) #2

declare i32 @close(i32 noundef) #5

declare i32 @fwprintf(ptr noundef, ptr noundef, ...) #5

; Function Attrs: noinline nounwind optnone uwtable
define internal void @goodB2G2() #0 {
  %1 = alloca ptr, align 8
  %2 = alloca [100 x i32], align 16
  %3 = alloca i32, align 4
  %4 = alloca %struct.sockaddr_in, align 4
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  call void @llvm.memset.p0.i64(ptr align 16 %2, i8 0, i64 400, i1 false)
  %9 = getelementptr inbounds [100 x i32], ptr %2, i64 0, i64 0
  store ptr %9, ptr %1, align 8
  store i32 -1, ptr %6, align 4
  store i32 -1, ptr %7, align 4
  %10 = load ptr, ptr %1, align 8
  %11 = call i64 @wcslen(ptr noundef %10) #6
  store i64 %11, ptr %8, align 8
  br label %12

12:                                               ; preds = %0
  %13 = call i32 @socket(i32 noundef 2, i32 noundef 1, i32 noundef 6) #7
  store i32 %13, ptr %6, align 4
  %14 = load i32, ptr %6, align 4
  %15 = icmp eq i32 %14, -1
  br i1 %15, label %16, label %17

16:                                               ; preds = %12
  br label %77

17:                                               ; preds = %12
  call void @llvm.memset.p0.i64(ptr align 4 %4, i8 0, i64 16, i1 false)
  %18 = getelementptr inbounds nuw %struct.sockaddr_in, ptr %4, i32 0, i32 0
  store i16 2, ptr %18, align 4
  %19 = getelementptr inbounds nuw %struct.sockaddr_in, ptr %4, i32 0, i32 2
  %20 = getelementptr inbounds nuw %struct.in_addr, ptr %19, i32 0, i32 0
  store i32 0, ptr %20, align 4
  %21 = call zeroext i16 @htons(i16 noundef zeroext 27015) #8
  %22 = getelementptr inbounds nuw %struct.sockaddr_in, ptr %4, i32 0, i32 1
  store i16 %21, ptr %22, align 2
  %23 = load i32, ptr %6, align 4
  %24 = call i32 @bind(i32 noundef %23, ptr noundef %4, i32 noundef 16) #7
  %25 = icmp eq i32 %24, -1
  br i1 %25, label %26, label %27

26:                                               ; preds = %17
  br label %77

27:                                               ; preds = %17
  %28 = load i32, ptr %6, align 4
  %29 = call i32 @listen(i32 noundef %28, i32 noundef 5) #7
  %30 = icmp eq i32 %29, -1
  br i1 %30, label %31, label %32

31:                                               ; preds = %27
  br label %77

32:                                               ; preds = %27
  %33 = load i32, ptr %6, align 4
  %34 = call i32 @accept(i32 noundef %33, ptr noundef null, ptr noundef null)
  store i32 %34, ptr %7, align 4
  %35 = load i32, ptr %7, align 4
  %36 = icmp eq i32 %35, -1
  br i1 %36, label %37, label %38

37:                                               ; preds = %32
  br label %77

38:                                               ; preds = %32
  %39 = load i32, ptr %7, align 4
  %40 = load ptr, ptr %1, align 8
  %41 = load i64, ptr %8, align 8
  %42 = getelementptr inbounds nuw i32, ptr %40, i64 %41
  %43 = load i64, ptr %8, align 8
  %44 = sub i64 100, %43
  %45 = sub i64 %44, 1
  %46 = mul i64 4, %45
  %47 = call i64 @recv(i32 noundef %39, ptr noundef %42, i64 noundef %46, i32 noundef 0)
  %48 = trunc i64 %47 to i32
  store i32 %48, ptr %3, align 4
  %49 = load i32, ptr %3, align 4
  %50 = icmp eq i32 %49, -1
  br i1 %50, label %54, label %51

51:                                               ; preds = %38
  %52 = load i32, ptr %3, align 4
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %51, %38
  br label %77

55:                                               ; preds = %51
  %56 = load ptr, ptr %1, align 8
  %57 = load i64, ptr %8, align 8
  %58 = load i32, ptr %3, align 4
  %59 = sext i32 %58 to i64
  %60 = udiv i64 %59, 4
  %61 = add i64 %57, %60
  %62 = getelementptr inbounds nuw i32, ptr %56, i64 %61
  store i32 0, ptr %62, align 4
  %63 = load ptr, ptr %1, align 8
  %64 = call ptr @wcschr(ptr noundef %63, i32 noundef 13) #6
  store ptr %64, ptr %5, align 8
  %65 = load ptr, ptr %5, align 8
  %66 = icmp ne ptr %65, null
  br i1 %66, label %67, label %69

67:                                               ; preds = %55
  %68 = load ptr, ptr %5, align 8
  store i32 0, ptr %68, align 4
  br label %69

69:                                               ; preds = %67, %55
  %70 = load ptr, ptr %1, align 8
  %71 = call ptr @wcschr(ptr noundef %70, i32 noundef 10) #6
  store ptr %71, ptr %5, align 8
  %72 = load ptr, ptr %5, align 8
  %73 = icmp ne ptr %72, null
  br i1 %73, label %74, label %76

74:                                               ; preds = %69
  %75 = load ptr, ptr %5, align 8
  store i32 0, ptr %75, align 4
  br label %76

76:                                               ; preds = %74, %69
  br label %77

77:                                               ; preds = %76, %54, %37, %31, %26, %16
  %78 = load i32, ptr %6, align 4
  %79 = icmp ne i32 %78, -1
  br i1 %79, label %80, label %83

80:                                               ; preds = %77
  %81 = load i32, ptr %6, align 4
  %82 = call i32 @close(i32 noundef %81)
  br label %83

83:                                               ; preds = %80, %77
  %84 = load i32, ptr %7, align 4
  %85 = icmp ne i32 %84, -1
  br i1 %85, label %86, label %89

86:                                               ; preds = %83
  %87 = load i32, ptr %7, align 4
  %88 = call i32 @close(i32 noundef %87)
  br label %89

89:                                               ; preds = %86, %83
  %90 = load ptr, ptr @stdout, align 8
  %91 = load ptr, ptr %1, align 8
  %92 = call i32 (ptr, ptr, ...) @fwprintf(ptr noundef %90, ptr noundef @.str, ptr noundef %91)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @goodG2B1() #0 {
  %1 = alloca ptr, align 8
  %2 = alloca [100 x i32], align 16
  call void @llvm.memset.p0.i64(ptr align 16 %2, i8 0, i64 400, i1 false)
  %3 = getelementptr inbounds [100 x i32], ptr %2, i64 0, i64 0
  store ptr %3, ptr %1, align 8
  %4 = load ptr, ptr %1, align 8
  %5 = call ptr @wcscpy(ptr noundef %4, ptr noundef @.str.1) #7
  %6 = load ptr, ptr @stdout, align 8
  %7 = load ptr, ptr %1, align 8
  %8 = call i32 (ptr, ptr, ...) @fwprintf(ptr noundef %6, ptr noundef %7)
  ret void
}

; Function Attrs: nounwind
declare ptr @wcscpy(ptr noundef, ptr noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define internal void @goodG2B2() #0 {
  %1 = alloca ptr, align 8
  %2 = alloca [100 x i32], align 16
  call void @llvm.memset.p0.i64(ptr align 16 %2, i8 0, i64 400, i1 false)
  %3 = getelementptr inbounds [100 x i32], ptr %2, i64 0, i64 0
  store ptr %3, ptr %1, align 8
  %4 = load ptr, ptr %1, align 8
  %5 = call ptr @wcscpy(ptr noundef %4, ptr noundef @.str.1) #7
  %6 = load ptr, ptr @stdout, align 8
  %7 = load ptr, ptr %1, align 8
  %8 = call i32 (ptr, ptr, ...) @fwprintf(ptr noundef %6, ptr noundef %7)
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
