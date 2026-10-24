; ModuleID = '/home/timur/Desktop/juliet/data/C/testcases/CWE134_Uncontrolled_Format_String/s04/CWE134_Uncontrolled_Format_String__wchar_t_connect_socket_vprintf_45.c'
source_filename = "/home/timur/Desktop/juliet/data/C/testcases/CWE134_Uncontrolled_Format_String/s04/CWE134_Uncontrolled_Format_String__wchar_t_connect_socket_vprintf_45.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.__va_list_tag = type { i32, i32, ptr, ptr }
%struct.sockaddr_in = type { i16, i16, %struct.in_addr, [8 x i8] }
%struct.in_addr = type { i32 }

@.str = private unnamed_addr constant [16 x i32] [i32 102, i32 105, i32 120, i32 101, i32 100, i32 115, i32 116, i32 114, i32 105, i32 110, i32 103, i32 116, i32 101, i32 115, i32 116, i32 0], align 4
@CWE134_Uncontrolled_Format_String__wchar_t_connect_socket_vprintf_45_goodG2BData = internal global ptr null, align 8
@.str.1 = private unnamed_addr constant [10 x i8] c"127.0.0.1\00", align 1
@CWE134_Uncontrolled_Format_String__wchar_t_connect_socket_vprintf_45_goodB2GData = internal global ptr null, align 8
@.str.2 = private unnamed_addr constant [3 x i32] [i32 37, i32 115, i32 0], align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__wchar_t_connect_socket_vprintf_45_good() #0 {
  call void @goodG2B()
  call void @goodB2G()
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @goodG2B() #0 {
  %1 = alloca ptr, align 8
  %2 = alloca [100 x i32], align 16
  call void @llvm.memset.p0.i64(ptr align 16 %2, i8 0, i64 400, i1 false)
  %3 = getelementptr inbounds [100 x i32], ptr %2, i64 0, i64 0
  store ptr %3, ptr %1, align 8
  %4 = load ptr, ptr %1, align 8
  %5 = call ptr @wcscpy(ptr noundef %4, ptr noundef @.str) #7
  %6 = load ptr, ptr %1, align 8
  store ptr %6, ptr @CWE134_Uncontrolled_Format_String__wchar_t_connect_socket_vprintf_45_goodG2BData, align 8
  call void @goodG2BSink()
  ret void
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #1

; Function Attrs: nounwind
declare ptr @wcscpy(ptr noundef, ptr noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal void @goodG2BSink() #0 {
  %1 = alloca ptr, align 8
  %2 = load ptr, ptr @CWE134_Uncontrolled_Format_String__wchar_t_connect_socket_vprintf_45_goodG2BData, align 8
  store ptr %2, ptr %1, align 8
  %3 = load ptr, ptr %1, align 8
  %4 = load ptr, ptr %1, align 8
  call void (ptr, ...) @goodG2BVaSink(ptr noundef %3, ptr noundef %4)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @goodG2BVaSink(ptr noundef %0, ...) #0 {
  %2 = alloca ptr, align 8
  %3 = alloca [1 x %struct.__va_list_tag], align 16
  store ptr %0, ptr %2, align 8
  %4 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %3, i64 0, i64 0
  call void @llvm.va_start.p0(ptr %4)
  %5 = load ptr, ptr %2, align 8
  %6 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %3, i64 0, i64 0
  %7 = call i32 @vwprintf(ptr noundef %5, ptr noundef %6)
  %8 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %3, i64 0, i64 0
  call void @llvm.va_end.p0(ptr %8)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start.p0(ptr) #3

declare i32 @vwprintf(ptr noundef, ptr noundef) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end.p0(ptr) #3

; Function Attrs: noinline nounwind optnone uwtable
define internal void @goodB2G() #0 {
  %1 = alloca ptr, align 8
  %2 = alloca [100 x i32], align 16
  %3 = alloca i32, align 4
  %4 = alloca %struct.sockaddr_in, align 4
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  call void @llvm.memset.p0.i64(ptr align 16 %2, i8 0, i64 400, i1 false)
  %8 = getelementptr inbounds [100 x i32], ptr %2, i64 0, i64 0
  store ptr %8, ptr %1, align 8
  store i32 -1, ptr %6, align 4
  %9 = load ptr, ptr %1, align 8
  %10 = call i64 @wcslen(ptr noundef %9) #8
  store i64 %10, ptr %7, align 8
  br label %11

11:                                               ; preds = %0
  %12 = call i32 @socket(i32 noundef 2, i32 noundef 1, i32 noundef 6) #7
  store i32 %12, ptr %6, align 4
  %13 = load i32, ptr %6, align 4
  %14 = icmp eq i32 %13, -1
  br i1 %14, label %15, label %16

15:                                               ; preds = %11
  br label %66

16:                                               ; preds = %11
  call void @llvm.memset.p0.i64(ptr align 4 %4, i8 0, i64 16, i1 false)
  %17 = getelementptr inbounds nuw %struct.sockaddr_in, ptr %4, i32 0, i32 0
  store i16 2, ptr %17, align 4
  %18 = call i32 @inet_addr(ptr noundef @.str.1) #7
  %19 = getelementptr inbounds nuw %struct.sockaddr_in, ptr %4, i32 0, i32 2
  %20 = getelementptr inbounds nuw %struct.in_addr, ptr %19, i32 0, i32 0
  store i32 %18, ptr %20, align 4
  %21 = call zeroext i16 @htons(i16 noundef zeroext 27015) #9
  %22 = getelementptr inbounds nuw %struct.sockaddr_in, ptr %4, i32 0, i32 1
  store i16 %21, ptr %22, align 2
  %23 = load i32, ptr %6, align 4
  %24 = call i32 @connect(i32 noundef %23, ptr noundef %4, i32 noundef 16)
  %25 = icmp eq i32 %24, -1
  br i1 %25, label %26, label %27

26:                                               ; preds = %16
  br label %66

27:                                               ; preds = %16
  %28 = load i32, ptr %6, align 4
  %29 = load ptr, ptr %1, align 8
  %30 = load i64, ptr %7, align 8
  %31 = getelementptr inbounds nuw i32, ptr %29, i64 %30
  %32 = load i64, ptr %7, align 8
  %33 = sub i64 100, %32
  %34 = sub i64 %33, 1
  %35 = mul i64 4, %34
  %36 = call i64 @recv(i32 noundef %28, ptr noundef %31, i64 noundef %35, i32 noundef 0)
  %37 = trunc i64 %36 to i32
  store i32 %37, ptr %3, align 4
  %38 = load i32, ptr %3, align 4
  %39 = icmp eq i32 %38, -1
  br i1 %39, label %43, label %40

40:                                               ; preds = %27
  %41 = load i32, ptr %3, align 4
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %40, %27
  br label %66

44:                                               ; preds = %40
  %45 = load ptr, ptr %1, align 8
  %46 = load i64, ptr %7, align 8
  %47 = load i32, ptr %3, align 4
  %48 = sext i32 %47 to i64
  %49 = udiv i64 %48, 4
  %50 = add i64 %46, %49
  %51 = getelementptr inbounds nuw i32, ptr %45, i64 %50
  store i32 0, ptr %51, align 4
  %52 = load ptr, ptr %1, align 8
  %53 = call ptr @wcschr(ptr noundef %52, i32 noundef 13) #8
  store ptr %53, ptr %5, align 8
  %54 = load ptr, ptr %5, align 8
  %55 = icmp ne ptr %54, null
  br i1 %55, label %56, label %58

56:                                               ; preds = %44
  %57 = load ptr, ptr %5, align 8
  store i32 0, ptr %57, align 4
  br label %58

58:                                               ; preds = %56, %44
  %59 = load ptr, ptr %1, align 8
  %60 = call ptr @wcschr(ptr noundef %59, i32 noundef 10) #8
  store ptr %60, ptr %5, align 8
  %61 = load ptr, ptr %5, align 8
  %62 = icmp ne ptr %61, null
  br i1 %62, label %63, label %65

63:                                               ; preds = %58
  %64 = load ptr, ptr %5, align 8
  store i32 0, ptr %64, align 4
  br label %65

65:                                               ; preds = %63, %58
  br label %66

66:                                               ; preds = %65, %43, %26, %15
  %67 = load i32, ptr %6, align 4
  %68 = icmp ne i32 %67, -1
  br i1 %68, label %69, label %72

69:                                               ; preds = %66
  %70 = load i32, ptr %6, align 4
  %71 = call i32 @close(i32 noundef %70)
  br label %72

72:                                               ; preds = %69, %66
  %73 = load ptr, ptr %1, align 8
  store ptr %73, ptr @CWE134_Uncontrolled_Format_String__wchar_t_connect_socket_vprintf_45_goodB2GData, align 8
  call void @goodB2GSink()
  ret void
}

; Function Attrs: nounwind willreturn memory(read)
declare i64 @wcslen(ptr noundef) #5

; Function Attrs: nounwind
declare i32 @socket(i32 noundef, i32 noundef, i32 noundef) #2

; Function Attrs: nounwind
declare i32 @inet_addr(ptr noundef) #2

; Function Attrs: nounwind willreturn memory(none)
declare zeroext i16 @htons(i16 noundef zeroext) #6

declare i32 @connect(i32 noundef, ptr noundef, i32 noundef) #4

declare i64 @recv(i32 noundef, ptr noundef, i64 noundef, i32 noundef) #4

; Function Attrs: nounwind willreturn memory(read)
declare ptr @wcschr(ptr noundef, i32 noundef) #5

declare i32 @close(i32 noundef) #4

; Function Attrs: noinline nounwind optnone uwtable
define internal void @goodB2GSink() #0 {
  %1 = alloca ptr, align 8
  %2 = load ptr, ptr @CWE134_Uncontrolled_Format_String__wchar_t_connect_socket_vprintf_45_goodB2GData, align 8
  store ptr %2, ptr %1, align 8
  %3 = load ptr, ptr %1, align 8
  %4 = load ptr, ptr %1, align 8
  call void (ptr, ...) @goodB2GVaSink(ptr noundef %3, ptr noundef %4)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @goodB2GVaSink(ptr noundef %0, ...) #0 {
  %2 = alloca ptr, align 8
  %3 = alloca [1 x %struct.__va_list_tag], align 16
  store ptr %0, ptr %2, align 8
  %4 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %3, i64 0, i64 0
  call void @llvm.va_start.p0(ptr %4)
  %5 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %3, i64 0, i64 0
  %6 = call i32 @vwprintf(ptr noundef @.str.2, ptr noundef %5)
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %3, i64 0, i64 0
  call void @llvm.va_end.p0(ptr %7)
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn }
attributes #4 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind willreturn memory(read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind willreturn memory(none) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }
attributes #8 = { nounwind willreturn memory(read) }
attributes #9 = { nounwind willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"Ubuntu clang version 21.1.8 (6ubuntu1)"}
