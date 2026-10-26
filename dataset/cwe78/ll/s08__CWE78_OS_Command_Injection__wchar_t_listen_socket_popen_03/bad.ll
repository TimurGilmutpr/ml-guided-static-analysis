; ModuleID = 'data/C/testcases/CWE78_OS_Command_Injection/s08/CWE78_OS_Command_Injection__wchar_t_listen_socket_popen_03.c'
source_filename = "data/C/testcases/CWE78_OS_Command_Injection/s08/CWE78_OS_Command_Injection__wchar_t_listen_socket_popen_03.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.sockaddr_in = type { i16, i16, %struct.in_addr, [8 x i8] }
%struct.in_addr = type { i32 }

@.str = private unnamed_addr constant [2 x i32] [i32 119, i32 0], align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE78_OS_Command_Injection__wchar_t_listen_socket_popen_03_bad() #0 {
  %1 = alloca ptr, align 8
  %2 = alloca [100 x i32], align 16
  %3 = alloca i32, align 4
  %4 = alloca %struct.sockaddr_in, align 4
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
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
  store i32 -1, ptr %7, align 4
  %14 = load ptr, ptr %1, align 8
  %15 = call i64 @wcslen(ptr noundef %14) #6
  store i64 %15, ptr %8, align 8
  br label %16

16:                                               ; preds = %0
  %17 = call i32 @socket(i32 noundef 2, i32 noundef 1, i32 noundef 6) #7
  store i32 %17, ptr %6, align 4
  %18 = load i32, ptr %6, align 4
  %19 = icmp eq i32 %18, -1
  br i1 %19, label %20, label %21

20:                                               ; preds = %16
  br label %81

21:                                               ; preds = %16
  call void @llvm.memset.p0.i64(ptr align 4 %4, i8 0, i64 16, i1 false)
  %22 = getelementptr inbounds nuw %struct.sockaddr_in, ptr %4, i32 0, i32 0
  store i16 2, ptr %22, align 4
  %23 = getelementptr inbounds nuw %struct.sockaddr_in, ptr %4, i32 0, i32 2
  %24 = getelementptr inbounds nuw %struct.in_addr, ptr %23, i32 0, i32 0
  store i32 0, ptr %24, align 4
  %25 = call zeroext i16 @htons(i16 noundef zeroext 27015) #8
  %26 = getelementptr inbounds nuw %struct.sockaddr_in, ptr %4, i32 0, i32 1
  store i16 %25, ptr %26, align 2
  %27 = load i32, ptr %6, align 4
  %28 = call i32 @bind(i32 noundef %27, ptr noundef %4, i32 noundef 16) #7
  %29 = icmp eq i32 %28, -1
  br i1 %29, label %30, label %31

30:                                               ; preds = %21
  br label %81

31:                                               ; preds = %21
  %32 = load i32, ptr %6, align 4
  %33 = call i32 @listen(i32 noundef %32, i32 noundef 5) #7
  %34 = icmp eq i32 %33, -1
  br i1 %34, label %35, label %36

35:                                               ; preds = %31
  br label %81

36:                                               ; preds = %31
  %37 = load i32, ptr %6, align 4
  %38 = call i32 @accept(i32 noundef %37, ptr noundef null, ptr noundef null)
  store i32 %38, ptr %7, align 4
  %39 = load i32, ptr %7, align 4
  %40 = icmp eq i32 %39, -1
  br i1 %40, label %41, label %42

41:                                               ; preds = %36
  br label %81

42:                                               ; preds = %36
  %43 = load i32, ptr %7, align 4
  %44 = load ptr, ptr %1, align 8
  %45 = load i64, ptr %8, align 8
  %46 = getelementptr inbounds nuw i32, ptr %44, i64 %45
  %47 = load i64, ptr %8, align 8
  %48 = sub i64 100, %47
  %49 = sub i64 %48, 1
  %50 = mul i64 4, %49
  %51 = call i64 @recv(i32 noundef %43, ptr noundef %46, i64 noundef %50, i32 noundef 0)
  %52 = trunc i64 %51 to i32
  store i32 %52, ptr %3, align 4
  %53 = load i32, ptr %3, align 4
  %54 = icmp eq i32 %53, -1
  br i1 %54, label %58, label %55

55:                                               ; preds = %42
  %56 = load i32, ptr %3, align 4
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %55, %42
  br label %81

59:                                               ; preds = %55
  %60 = load ptr, ptr %1, align 8
  %61 = load i64, ptr %8, align 8
  %62 = load i32, ptr %3, align 4
  %63 = sext i32 %62 to i64
  %64 = udiv i64 %63, 4
  %65 = add i64 %61, %64
  %66 = getelementptr inbounds nuw i32, ptr %60, i64 %65
  store i32 0, ptr %66, align 4
  %67 = load ptr, ptr %1, align 8
  %68 = call ptr @wcschr(ptr noundef %67, i32 noundef 13) #6
  store ptr %68, ptr %5, align 8
  %69 = load ptr, ptr %5, align 8
  %70 = icmp ne ptr %69, null
  br i1 %70, label %71, label %73

71:                                               ; preds = %59
  %72 = load ptr, ptr %5, align 8
  store i32 0, ptr %72, align 4
  br label %73

73:                                               ; preds = %71, %59
  %74 = load ptr, ptr %1, align 8
  %75 = call ptr @wcschr(ptr noundef %74, i32 noundef 10) #6
  store ptr %75, ptr %5, align 8
  %76 = load ptr, ptr %5, align 8
  %77 = icmp ne ptr %76, null
  br i1 %77, label %78, label %80

78:                                               ; preds = %73
  %79 = load ptr, ptr %5, align 8
  store i32 0, ptr %79, align 4
  br label %80

80:                                               ; preds = %78, %73
  br label %81

81:                                               ; preds = %80, %58, %41, %35, %30, %20
  %82 = load i32, ptr %6, align 4
  %83 = icmp ne i32 %82, -1
  br i1 %83, label %84, label %87

84:                                               ; preds = %81
  %85 = load i32, ptr %6, align 4
  %86 = call i32 @close(i32 noundef %85)
  br label %87

87:                                               ; preds = %84, %81
  %88 = load i32, ptr %7, align 4
  %89 = icmp ne i32 %88, -1
  br i1 %89, label %90, label %93

90:                                               ; preds = %87
  %91 = load i32, ptr %7, align 4
  %92 = call i32 @close(i32 noundef %91)
  br label %93

93:                                               ; preds = %90, %87
  %94 = load ptr, ptr %1, align 8
  %95 = call noalias ptr @popen(ptr noundef %94, ptr noundef @.str)
  store ptr %95, ptr %9, align 8
  %96 = load ptr, ptr %9, align 8
  %97 = icmp ne ptr %96, null
  br i1 %97, label %98, label %101

98:                                               ; preds = %93
  %99 = load ptr, ptr %9, align 8
  %100 = call i32 @pclose(ptr noundef %99)
  br label %101

101:                                              ; preds = %98, %93
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

declare noalias ptr @popen(ptr noundef, ptr noundef) #5

declare i32 @pclose(ptr noundef) #5

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
