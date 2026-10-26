; ModuleID = 'data/C/testcases/CWE78_OS_Command_Injection/s05/CWE78_OS_Command_Injection__wchar_t_connect_socket_execlp_31.c'
source_filename = "data/C/testcases/CWE78_OS_Command_Injection/s05/CWE78_OS_Command_Injection__wchar_t_connect_socket_execlp_31.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.sockaddr_in = type { i16, i16, %struct.in_addr, [8 x i8] }
%struct.in_addr = type { i32 }

@.str = private unnamed_addr constant [10 x i8] c"127.0.0.1\00", align 1
@.str.1 = private unnamed_addr constant [3 x i32] [i32 115, i32 104, i32 0], align 4
@.str.2 = private unnamed_addr constant [3 x i32] [i32 45, i32 99, i32 0], align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE78_OS_Command_Injection__wchar_t_connect_socket_execlp_31_bad() #0 {
  %1 = alloca ptr, align 8
  %2 = alloca [100 x i32], align 16
  %3 = alloca i32, align 4
  %4 = alloca %struct.sockaddr_in, align 4
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  call void @llvm.memset.p0.i64(ptr align 16 %2, i8 0, i64 400, i1 false)
  %10 = getelementptr inbounds [100 x i32], ptr %2, i32 0, i32 0
  store i32 108, ptr %10, align 16
  %11 = getelementptr inbounds [100 x i32], ptr %2, i32 0, i32 1
  store i32 115, ptr %11, align 4
  %12 = getelementptr inbounds [100 x i32], ptr %2, i32 0, i32 2
  store i32 32, ptr %12, align 8
  %13 = getelementptr inbounds [100 x i32], ptr %2, i64 0, i64 0
  store ptr %13, ptr %1, align 8
  store i32 -1, ptr %6, align 4
  %14 = load ptr, ptr %1, align 8
  %15 = call i64 @wcslen(ptr noundef %14) #6
  store i64 %15, ptr %7, align 8
  br label %16

16:                                               ; preds = %0
  %17 = call i32 @socket(i32 noundef 2, i32 noundef 1, i32 noundef 6) #7
  store i32 %17, ptr %6, align 4
  %18 = load i32, ptr %6, align 4
  %19 = icmp eq i32 %18, -1
  br i1 %19, label %20, label %21

20:                                               ; preds = %16
  br label %71

21:                                               ; preds = %16
  call void @llvm.memset.p0.i64(ptr align 4 %4, i8 0, i64 16, i1 false)
  %22 = getelementptr inbounds nuw %struct.sockaddr_in, ptr %4, i32 0, i32 0
  store i16 2, ptr %22, align 4
  %23 = call i32 @inet_addr(ptr noundef @.str) #7
  %24 = getelementptr inbounds nuw %struct.sockaddr_in, ptr %4, i32 0, i32 2
  %25 = getelementptr inbounds nuw %struct.in_addr, ptr %24, i32 0, i32 0
  store i32 %23, ptr %25, align 4
  %26 = call zeroext i16 @htons(i16 noundef zeroext 27015) #8
  %27 = getelementptr inbounds nuw %struct.sockaddr_in, ptr %4, i32 0, i32 1
  store i16 %26, ptr %27, align 2
  %28 = load i32, ptr %6, align 4
  %29 = call i32 @connect(i32 noundef %28, ptr noundef %4, i32 noundef 16)
  %30 = icmp eq i32 %29, -1
  br i1 %30, label %31, label %32

31:                                               ; preds = %21
  br label %71

32:                                               ; preds = %21
  %33 = load i32, ptr %6, align 4
  %34 = load ptr, ptr %1, align 8
  %35 = load i64, ptr %7, align 8
  %36 = getelementptr inbounds nuw i32, ptr %34, i64 %35
  %37 = load i64, ptr %7, align 8
  %38 = sub i64 100, %37
  %39 = sub i64 %38, 1
  %40 = mul i64 4, %39
  %41 = call i64 @recv(i32 noundef %33, ptr noundef %36, i64 noundef %40, i32 noundef 0)
  %42 = trunc i64 %41 to i32
  store i32 %42, ptr %3, align 4
  %43 = load i32, ptr %3, align 4
  %44 = icmp eq i32 %43, -1
  br i1 %44, label %48, label %45

45:                                               ; preds = %32
  %46 = load i32, ptr %3, align 4
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %45, %32
  br label %71

49:                                               ; preds = %45
  %50 = load ptr, ptr %1, align 8
  %51 = load i64, ptr %7, align 8
  %52 = load i32, ptr %3, align 4
  %53 = sext i32 %52 to i64
  %54 = udiv i64 %53, 4
  %55 = add i64 %51, %54
  %56 = getelementptr inbounds nuw i32, ptr %50, i64 %55
  store i32 0, ptr %56, align 4
  %57 = load ptr, ptr %1, align 8
  %58 = call ptr @wcschr(ptr noundef %57, i32 noundef 13) #6
  store ptr %58, ptr %5, align 8
  %59 = load ptr, ptr %5, align 8
  %60 = icmp ne ptr %59, null
  br i1 %60, label %61, label %63

61:                                               ; preds = %49
  %62 = load ptr, ptr %5, align 8
  store i32 0, ptr %62, align 4
  br label %63

63:                                               ; preds = %61, %49
  %64 = load ptr, ptr %1, align 8
  %65 = call ptr @wcschr(ptr noundef %64, i32 noundef 10) #6
  store ptr %65, ptr %5, align 8
  %66 = load ptr, ptr %5, align 8
  %67 = icmp ne ptr %66, null
  br i1 %67, label %68, label %70

68:                                               ; preds = %63
  %69 = load ptr, ptr %5, align 8
  store i32 0, ptr %69, align 4
  br label %70

70:                                               ; preds = %68, %63
  br label %71

71:                                               ; preds = %70, %48, %31, %20
  %72 = load i32, ptr %6, align 4
  %73 = icmp ne i32 %72, -1
  br i1 %73, label %74, label %77

74:                                               ; preds = %71
  %75 = load i32, ptr %6, align 4
  %76 = call i32 @close(i32 noundef %75)
  br label %77

77:                                               ; preds = %74, %71
  %78 = load ptr, ptr %1, align 8
  store ptr %78, ptr %8, align 8
  %79 = load ptr, ptr %8, align 8
  store ptr %79, ptr %9, align 8
  %80 = load ptr, ptr %9, align 8
  %81 = call i32 (ptr, ptr, ...) @execlp(ptr noundef @.str.1, ptr noundef @.str.1, ptr noundef @.str.2, ptr noundef %80, ptr noundef null) #7
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

; Function Attrs: nounwind
declare i32 @execlp(ptr noundef, ptr noundef, ...) #3

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
