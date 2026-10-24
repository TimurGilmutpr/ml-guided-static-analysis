; ModuleID = '/home/timur/Desktop/juliet/data/C/testcases/CWE134_Uncontrolled_Format_String/s06/CWE134_Uncontrolled_Format_String__wchar_t_listen_socket_snprintf_03.c'
source_filename = "/home/timur/Desktop/juliet/data/C/testcases/CWE134_Uncontrolled_Format_String/s06/CWE134_Uncontrolled_Format_String__wchar_t_listen_socket_snprintf_03.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.sockaddr_in = type { i16, i16, %struct.in_addr, [8 x i8] }
%struct.in_addr = type { i32 }

@.str = private unnamed_addr constant [3 x i32] [i32 37, i32 115, i32 0], align 4
@.str.1 = private unnamed_addr constant [16 x i32] [i32 102, i32 105, i32 120, i32 101, i32 100, i32 115, i32 116, i32 114, i32 105, i32 110, i32 103, i32 116, i32 101, i32 115, i32 116, i32 0], align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__wchar_t_listen_socket_snprintf_03_good() #0 {
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
  %9 = alloca [100 x i32], align 16
  call void @llvm.memset.p0.i64(ptr align 16 %2, i8 0, i64 400, i1 false)
  %10 = getelementptr inbounds [100 x i32], ptr %2, i64 0, i64 0
  store ptr %10, ptr %1, align 8
  store i32 -1, ptr %6, align 4
  store i32 -1, ptr %7, align 4
  %11 = load ptr, ptr %1, align 8
  %12 = call i64 @wcslen(ptr noundef %11) #6
  store i64 %12, ptr %8, align 8
  br label %13

13:                                               ; preds = %0
  %14 = call i32 @socket(i32 noundef 2, i32 noundef 1, i32 noundef 6) #7
  store i32 %14, ptr %6, align 4
  %15 = load i32, ptr %6, align 4
  %16 = icmp eq i32 %15, -1
  br i1 %16, label %17, label %18

17:                                               ; preds = %13
  br label %78

18:                                               ; preds = %13
  call void @llvm.memset.p0.i64(ptr align 4 %4, i8 0, i64 16, i1 false)
  %19 = getelementptr inbounds nuw %struct.sockaddr_in, ptr %4, i32 0, i32 0
  store i16 2, ptr %19, align 4
  %20 = getelementptr inbounds nuw %struct.sockaddr_in, ptr %4, i32 0, i32 2
  %21 = getelementptr inbounds nuw %struct.in_addr, ptr %20, i32 0, i32 0
  store i32 0, ptr %21, align 4
  %22 = call zeroext i16 @htons(i16 noundef zeroext 27015) #8
  %23 = getelementptr inbounds nuw %struct.sockaddr_in, ptr %4, i32 0, i32 1
  store i16 %22, ptr %23, align 2
  %24 = load i32, ptr %6, align 4
  %25 = call i32 @bind(i32 noundef %24, ptr noundef %4, i32 noundef 16) #7
  %26 = icmp eq i32 %25, -1
  br i1 %26, label %27, label %28

27:                                               ; preds = %18
  br label %78

28:                                               ; preds = %18
  %29 = load i32, ptr %6, align 4
  %30 = call i32 @listen(i32 noundef %29, i32 noundef 5) #7
  %31 = icmp eq i32 %30, -1
  br i1 %31, label %32, label %33

32:                                               ; preds = %28
  br label %78

33:                                               ; preds = %28
  %34 = load i32, ptr %6, align 4
  %35 = call i32 @accept(i32 noundef %34, ptr noundef null, ptr noundef null)
  store i32 %35, ptr %7, align 4
  %36 = load i32, ptr %7, align 4
  %37 = icmp eq i32 %36, -1
  br i1 %37, label %38, label %39

38:                                               ; preds = %33
  br label %78

39:                                               ; preds = %33
  %40 = load i32, ptr %7, align 4
  %41 = load ptr, ptr %1, align 8
  %42 = load i64, ptr %8, align 8
  %43 = getelementptr inbounds nuw i32, ptr %41, i64 %42
  %44 = load i64, ptr %8, align 8
  %45 = sub i64 100, %44
  %46 = sub i64 %45, 1
  %47 = mul i64 4, %46
  %48 = call i64 @recv(i32 noundef %40, ptr noundef %43, i64 noundef %47, i32 noundef 0)
  %49 = trunc i64 %48 to i32
  store i32 %49, ptr %3, align 4
  %50 = load i32, ptr %3, align 4
  %51 = icmp eq i32 %50, -1
  br i1 %51, label %55, label %52

52:                                               ; preds = %39
  %53 = load i32, ptr %3, align 4
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %52, %39
  br label %78

56:                                               ; preds = %52
  %57 = load ptr, ptr %1, align 8
  %58 = load i64, ptr %8, align 8
  %59 = load i32, ptr %3, align 4
  %60 = sext i32 %59 to i64
  %61 = udiv i64 %60, 4
  %62 = add i64 %58, %61
  %63 = getelementptr inbounds nuw i32, ptr %57, i64 %62
  store i32 0, ptr %63, align 4
  %64 = load ptr, ptr %1, align 8
  %65 = call ptr @wcschr(ptr noundef %64, i32 noundef 13) #6
  store ptr %65, ptr %5, align 8
  %66 = load ptr, ptr %5, align 8
  %67 = icmp ne ptr %66, null
  br i1 %67, label %68, label %70

68:                                               ; preds = %56
  %69 = load ptr, ptr %5, align 8
  store i32 0, ptr %69, align 4
  br label %70

70:                                               ; preds = %68, %56
  %71 = load ptr, ptr %1, align 8
  %72 = call ptr @wcschr(ptr noundef %71, i32 noundef 10) #6
  store ptr %72, ptr %5, align 8
  %73 = load ptr, ptr %5, align 8
  %74 = icmp ne ptr %73, null
  br i1 %74, label %75, label %77

75:                                               ; preds = %70
  %76 = load ptr, ptr %5, align 8
  store i32 0, ptr %76, align 4
  br label %77

77:                                               ; preds = %75, %70
  br label %78

78:                                               ; preds = %77, %55, %38, %32, %27, %17
  %79 = load i32, ptr %6, align 4
  %80 = icmp ne i32 %79, -1
  br i1 %80, label %81, label %84

81:                                               ; preds = %78
  %82 = load i32, ptr %6, align 4
  %83 = call i32 @close(i32 noundef %82)
  br label %84

84:                                               ; preds = %81, %78
  %85 = load i32, ptr %7, align 4
  %86 = icmp ne i32 %85, -1
  br i1 %86, label %87, label %90

87:                                               ; preds = %84
  %88 = load i32, ptr %7, align 4
  %89 = call i32 @close(i32 noundef %88)
  br label %90

90:                                               ; preds = %87, %84
  call void @llvm.memset.p0.i64(ptr align 16 %9, i8 0, i64 400, i1 false)
  %91 = getelementptr inbounds [100 x i32], ptr %9, i64 0, i64 0
  %92 = load ptr, ptr %1, align 8
  %93 = call i32 (ptr, i64, ptr, ...) @swprintf(ptr noundef %91, i64 noundef 99, ptr noundef @.str, ptr noundef %92) #7
  %94 = getelementptr inbounds [100 x i32], ptr %9, i64 0, i64 0
  call void @printWLine(ptr noundef %94)
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
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca [100 x i32], align 16
  call void @llvm.memset.p0.i64(ptr align 16 %2, i8 0, i64 400, i1 false)
  %10 = getelementptr inbounds [100 x i32], ptr %2, i64 0, i64 0
  store ptr %10, ptr %1, align 8
  store i32 -1, ptr %6, align 4
  store i32 -1, ptr %7, align 4
  %11 = load ptr, ptr %1, align 8
  %12 = call i64 @wcslen(ptr noundef %11) #6
  store i64 %12, ptr %8, align 8
  br label %13

13:                                               ; preds = %0
  %14 = call i32 @socket(i32 noundef 2, i32 noundef 1, i32 noundef 6) #7
  store i32 %14, ptr %6, align 4
  %15 = load i32, ptr %6, align 4
  %16 = icmp eq i32 %15, -1
  br i1 %16, label %17, label %18

17:                                               ; preds = %13
  br label %78

18:                                               ; preds = %13
  call void @llvm.memset.p0.i64(ptr align 4 %4, i8 0, i64 16, i1 false)
  %19 = getelementptr inbounds nuw %struct.sockaddr_in, ptr %4, i32 0, i32 0
  store i16 2, ptr %19, align 4
  %20 = getelementptr inbounds nuw %struct.sockaddr_in, ptr %4, i32 0, i32 2
  %21 = getelementptr inbounds nuw %struct.in_addr, ptr %20, i32 0, i32 0
  store i32 0, ptr %21, align 4
  %22 = call zeroext i16 @htons(i16 noundef zeroext 27015) #8
  %23 = getelementptr inbounds nuw %struct.sockaddr_in, ptr %4, i32 0, i32 1
  store i16 %22, ptr %23, align 2
  %24 = load i32, ptr %6, align 4
  %25 = call i32 @bind(i32 noundef %24, ptr noundef %4, i32 noundef 16) #7
  %26 = icmp eq i32 %25, -1
  br i1 %26, label %27, label %28

27:                                               ; preds = %18
  br label %78

28:                                               ; preds = %18
  %29 = load i32, ptr %6, align 4
  %30 = call i32 @listen(i32 noundef %29, i32 noundef 5) #7
  %31 = icmp eq i32 %30, -1
  br i1 %31, label %32, label %33

32:                                               ; preds = %28
  br label %78

33:                                               ; preds = %28
  %34 = load i32, ptr %6, align 4
  %35 = call i32 @accept(i32 noundef %34, ptr noundef null, ptr noundef null)
  store i32 %35, ptr %7, align 4
  %36 = load i32, ptr %7, align 4
  %37 = icmp eq i32 %36, -1
  br i1 %37, label %38, label %39

38:                                               ; preds = %33
  br label %78

39:                                               ; preds = %33
  %40 = load i32, ptr %7, align 4
  %41 = load ptr, ptr %1, align 8
  %42 = load i64, ptr %8, align 8
  %43 = getelementptr inbounds nuw i32, ptr %41, i64 %42
  %44 = load i64, ptr %8, align 8
  %45 = sub i64 100, %44
  %46 = sub i64 %45, 1
  %47 = mul i64 4, %46
  %48 = call i64 @recv(i32 noundef %40, ptr noundef %43, i64 noundef %47, i32 noundef 0)
  %49 = trunc i64 %48 to i32
  store i32 %49, ptr %3, align 4
  %50 = load i32, ptr %3, align 4
  %51 = icmp eq i32 %50, -1
  br i1 %51, label %55, label %52

52:                                               ; preds = %39
  %53 = load i32, ptr %3, align 4
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %52, %39
  br label %78

56:                                               ; preds = %52
  %57 = load ptr, ptr %1, align 8
  %58 = load i64, ptr %8, align 8
  %59 = load i32, ptr %3, align 4
  %60 = sext i32 %59 to i64
  %61 = udiv i64 %60, 4
  %62 = add i64 %58, %61
  %63 = getelementptr inbounds nuw i32, ptr %57, i64 %62
  store i32 0, ptr %63, align 4
  %64 = load ptr, ptr %1, align 8
  %65 = call ptr @wcschr(ptr noundef %64, i32 noundef 13) #6
  store ptr %65, ptr %5, align 8
  %66 = load ptr, ptr %5, align 8
  %67 = icmp ne ptr %66, null
  br i1 %67, label %68, label %70

68:                                               ; preds = %56
  %69 = load ptr, ptr %5, align 8
  store i32 0, ptr %69, align 4
  br label %70

70:                                               ; preds = %68, %56
  %71 = load ptr, ptr %1, align 8
  %72 = call ptr @wcschr(ptr noundef %71, i32 noundef 10) #6
  store ptr %72, ptr %5, align 8
  %73 = load ptr, ptr %5, align 8
  %74 = icmp ne ptr %73, null
  br i1 %74, label %75, label %77

75:                                               ; preds = %70
  %76 = load ptr, ptr %5, align 8
  store i32 0, ptr %76, align 4
  br label %77

77:                                               ; preds = %75, %70
  br label %78

78:                                               ; preds = %77, %55, %38, %32, %27, %17
  %79 = load i32, ptr %6, align 4
  %80 = icmp ne i32 %79, -1
  br i1 %80, label %81, label %84

81:                                               ; preds = %78
  %82 = load i32, ptr %6, align 4
  %83 = call i32 @close(i32 noundef %82)
  br label %84

84:                                               ; preds = %81, %78
  %85 = load i32, ptr %7, align 4
  %86 = icmp ne i32 %85, -1
  br i1 %86, label %87, label %90

87:                                               ; preds = %84
  %88 = load i32, ptr %7, align 4
  %89 = call i32 @close(i32 noundef %88)
  br label %90

90:                                               ; preds = %87, %84
  call void @llvm.memset.p0.i64(ptr align 16 %9, i8 0, i64 400, i1 false)
  %91 = getelementptr inbounds [100 x i32], ptr %9, i64 0, i64 0
  %92 = load ptr, ptr %1, align 8
  %93 = call i32 (ptr, i64, ptr, ...) @swprintf(ptr noundef %91, i64 noundef 99, ptr noundef @.str, ptr noundef %92) #7
  %94 = getelementptr inbounds [100 x i32], ptr %9, i64 0, i64 0
  call void @printWLine(ptr noundef %94)
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
  %5 = load ptr, ptr %1, align 8
  %6 = call ptr @wcscpy(ptr noundef %5, ptr noundef @.str.1) #7
  call void @llvm.memset.p0.i64(ptr align 16 %3, i8 0, i64 400, i1 false)
  %7 = getelementptr inbounds [100 x i32], ptr %3, i64 0, i64 0
  %8 = load ptr, ptr %1, align 8
  %9 = call i32 (ptr, i64, ptr, ...) @swprintf(ptr noundef %7, i64 noundef 99, ptr noundef %8) #7
  %10 = getelementptr inbounds [100 x i32], ptr %3, i64 0, i64 0
  call void @printWLine(ptr noundef %10)
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
  %5 = load ptr, ptr %1, align 8
  %6 = call ptr @wcscpy(ptr noundef %5, ptr noundef @.str.1) #7
  call void @llvm.memset.p0.i64(ptr align 16 %3, i8 0, i64 400, i1 false)
  %7 = getelementptr inbounds [100 x i32], ptr %3, i64 0, i64 0
  %8 = load ptr, ptr %1, align 8
  %9 = call i32 (ptr, i64, ptr, ...) @swprintf(ptr noundef %7, i64 noundef 99, ptr noundef %8) #7
  %10 = getelementptr inbounds [100 x i32], ptr %3, i64 0, i64 0
  call void @printWLine(ptr noundef %10)
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
