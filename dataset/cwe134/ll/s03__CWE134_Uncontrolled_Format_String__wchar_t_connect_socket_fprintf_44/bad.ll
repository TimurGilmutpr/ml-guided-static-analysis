; ModuleID = '/home/timur/Desktop/juliet/data/C/testcases/CWE134_Uncontrolled_Format_String/s03/CWE134_Uncontrolled_Format_String__wchar_t_connect_socket_fprintf_44.c'
source_filename = "/home/timur/Desktop/juliet/data/C/testcases/CWE134_Uncontrolled_Format_String/s03/CWE134_Uncontrolled_Format_String__wchar_t_connect_socket_fprintf_44.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.sockaddr_in = type { i16, i16, %struct.in_addr, [8 x i8] }
%struct.in_addr = type { i32 }

@.str = private unnamed_addr constant [10 x i8] c"127.0.0.1\00", align 1
@stdout = external global ptr, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__wchar_t_connect_socket_fprintf_44_bad() #0 {
  %1 = alloca ptr, align 8
  %2 = alloca ptr, align 8
  %3 = alloca [100 x i32], align 16
  %4 = alloca i32, align 4
  %5 = alloca %struct.sockaddr_in, align 4
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store ptr @badSink, ptr %2, align 8
  call void @llvm.memset.p0.i64(ptr align 16 %3, i8 0, i64 400, i1 false)
  %9 = getelementptr inbounds [100 x i32], ptr %3, i64 0, i64 0
  store ptr %9, ptr %1, align 8
  store i32 -1, ptr %7, align 4
  %10 = load ptr, ptr %1, align 8
  %11 = call i64 @wcslen(ptr noundef %10) #6
  store i64 %11, ptr %8, align 8
  br label %12

12:                                               ; preds = %0
  %13 = call i32 @socket(i32 noundef 2, i32 noundef 1, i32 noundef 6) #7
  store i32 %13, ptr %7, align 4
  %14 = load i32, ptr %7, align 4
  %15 = icmp eq i32 %14, -1
  br i1 %15, label %16, label %17

16:                                               ; preds = %12
  br label %67

17:                                               ; preds = %12
  call void @llvm.memset.p0.i64(ptr align 4 %5, i8 0, i64 16, i1 false)
  %18 = getelementptr inbounds nuw %struct.sockaddr_in, ptr %5, i32 0, i32 0
  store i16 2, ptr %18, align 4
  %19 = call i32 @inet_addr(ptr noundef @.str) #7
  %20 = getelementptr inbounds nuw %struct.sockaddr_in, ptr %5, i32 0, i32 2
  %21 = getelementptr inbounds nuw %struct.in_addr, ptr %20, i32 0, i32 0
  store i32 %19, ptr %21, align 4
  %22 = call zeroext i16 @htons(i16 noundef zeroext 27015) #8
  %23 = getelementptr inbounds nuw %struct.sockaddr_in, ptr %5, i32 0, i32 1
  store i16 %22, ptr %23, align 2
  %24 = load i32, ptr %7, align 4
  %25 = call i32 @connect(i32 noundef %24, ptr noundef %5, i32 noundef 16)
  %26 = icmp eq i32 %25, -1
  br i1 %26, label %27, label %28

27:                                               ; preds = %17
  br label %67

28:                                               ; preds = %17
  %29 = load i32, ptr %7, align 4
  %30 = load ptr, ptr %1, align 8
  %31 = load i64, ptr %8, align 8
  %32 = getelementptr inbounds nuw i32, ptr %30, i64 %31
  %33 = load i64, ptr %8, align 8
  %34 = sub i64 100, %33
  %35 = sub i64 %34, 1
  %36 = mul i64 4, %35
  %37 = call i64 @recv(i32 noundef %29, ptr noundef %32, i64 noundef %36, i32 noundef 0)
  %38 = trunc i64 %37 to i32
  store i32 %38, ptr %4, align 4
  %39 = load i32, ptr %4, align 4
  %40 = icmp eq i32 %39, -1
  br i1 %40, label %44, label %41

41:                                               ; preds = %28
  %42 = load i32, ptr %4, align 4
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %41, %28
  br label %67

45:                                               ; preds = %41
  %46 = load ptr, ptr %1, align 8
  %47 = load i64, ptr %8, align 8
  %48 = load i32, ptr %4, align 4
  %49 = sext i32 %48 to i64
  %50 = udiv i64 %49, 4
  %51 = add i64 %47, %50
  %52 = getelementptr inbounds nuw i32, ptr %46, i64 %51
  store i32 0, ptr %52, align 4
  %53 = load ptr, ptr %1, align 8
  %54 = call ptr @wcschr(ptr noundef %53, i32 noundef 13) #6
  store ptr %54, ptr %6, align 8
  %55 = load ptr, ptr %6, align 8
  %56 = icmp ne ptr %55, null
  br i1 %56, label %57, label %59

57:                                               ; preds = %45
  %58 = load ptr, ptr %6, align 8
  store i32 0, ptr %58, align 4
  br label %59

59:                                               ; preds = %57, %45
  %60 = load ptr, ptr %1, align 8
  %61 = call ptr @wcschr(ptr noundef %60, i32 noundef 10) #6
  store ptr %61, ptr %6, align 8
  %62 = load ptr, ptr %6, align 8
  %63 = icmp ne ptr %62, null
  br i1 %63, label %64, label %66

64:                                               ; preds = %59
  %65 = load ptr, ptr %6, align 8
  store i32 0, ptr %65, align 4
  br label %66

66:                                               ; preds = %64, %59
  br label %67

67:                                               ; preds = %66, %44, %27, %16
  %68 = load i32, ptr %7, align 4
  %69 = icmp ne i32 %68, -1
  br i1 %69, label %70, label %73

70:                                               ; preds = %67
  %71 = load i32, ptr %7, align 4
  %72 = call i32 @close(i32 noundef %71)
  br label %73

73:                                               ; preds = %70, %67
  %74 = load ptr, ptr %2, align 8
  %75 = load ptr, ptr %1, align 8
  call void %74(ptr noundef %75)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @badSink(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr @stdout, align 8
  %4 = load ptr, ptr %2, align 8
  %5 = call i32 (ptr, ptr, ...) @fwprintf(ptr noundef %3, ptr noundef %4)
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

declare i32 @fwprintf(ptr noundef, ptr noundef, ...) #5

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
