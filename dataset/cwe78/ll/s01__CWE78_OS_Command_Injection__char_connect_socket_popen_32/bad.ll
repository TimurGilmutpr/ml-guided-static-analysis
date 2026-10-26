; ModuleID = 'data/C/testcases/CWE78_OS_Command_Injection/s01/CWE78_OS_Command_Injection__char_connect_socket_popen_32.c'
source_filename = "data/C/testcases/CWE78_OS_Command_Injection/s01/CWE78_OS_Command_Injection__char_connect_socket_popen_32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.sockaddr_in = type { i16, i16, %struct.in_addr, [8 x i8] }
%struct.in_addr = type { i32 }

@.str = private unnamed_addr constant [10 x i8] c"127.0.0.1\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"w\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE78_OS_Command_Injection__char_connect_socket_popen_32_bad() #0 {
  %1 = alloca ptr, align 8
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  %4 = alloca [100 x i8], align 16
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.sockaddr_in, align 4
  %8 = alloca ptr, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca ptr, align 8
  %12 = alloca ptr, align 8
  store ptr %1, ptr %2, align 8
  store ptr %1, ptr %3, align 8
  call void @llvm.memset.p0.i64(ptr align 16 %4, i8 0, i64 100, i1 false)
  %13 = getelementptr inbounds [100 x i8], ptr %4, i32 0, i32 0
  store i8 108, ptr %13, align 16
  %14 = getelementptr inbounds [100 x i8], ptr %4, i32 0, i32 1
  store i8 115, ptr %14, align 1
  %15 = getelementptr inbounds [100 x i8], ptr %4, i32 0, i32 2
  store i8 32, ptr %15, align 2
  %16 = getelementptr inbounds [100 x i8], ptr %4, i64 0, i64 0
  store ptr %16, ptr %1, align 8
  %17 = load ptr, ptr %2, align 8
  %18 = load ptr, ptr %17, align 8
  store ptr %18, ptr %5, align 8
  store i32 -1, ptr %9, align 4
  %19 = load ptr, ptr %5, align 8
  %20 = call i64 @strlen(ptr noundef %19) #6
  store i64 %20, ptr %10, align 8
  br label %21

21:                                               ; preds = %0
  %22 = call i32 @socket(i32 noundef 2, i32 noundef 1, i32 noundef 6) #7
  store i32 %22, ptr %9, align 4
  %23 = load i32, ptr %9, align 4
  %24 = icmp eq i32 %23, -1
  br i1 %24, label %25, label %26

25:                                               ; preds = %21
  br label %76

26:                                               ; preds = %21
  call void @llvm.memset.p0.i64(ptr align 4 %7, i8 0, i64 16, i1 false)
  %27 = getelementptr inbounds nuw %struct.sockaddr_in, ptr %7, i32 0, i32 0
  store i16 2, ptr %27, align 4
  %28 = call i32 @inet_addr(ptr noundef @.str) #7
  %29 = getelementptr inbounds nuw %struct.sockaddr_in, ptr %7, i32 0, i32 2
  %30 = getelementptr inbounds nuw %struct.in_addr, ptr %29, i32 0, i32 0
  store i32 %28, ptr %30, align 4
  %31 = call zeroext i16 @htons(i16 noundef zeroext 27015) #8
  %32 = getelementptr inbounds nuw %struct.sockaddr_in, ptr %7, i32 0, i32 1
  store i16 %31, ptr %32, align 2
  %33 = load i32, ptr %9, align 4
  %34 = call i32 @connect(i32 noundef %33, ptr noundef %7, i32 noundef 16)
  %35 = icmp eq i32 %34, -1
  br i1 %35, label %36, label %37

36:                                               ; preds = %26
  br label %76

37:                                               ; preds = %26
  %38 = load i32, ptr %9, align 4
  %39 = load ptr, ptr %5, align 8
  %40 = load i64, ptr %10, align 8
  %41 = getelementptr inbounds nuw i8, ptr %39, i64 %40
  %42 = load i64, ptr %10, align 8
  %43 = sub i64 100, %42
  %44 = sub i64 %43, 1
  %45 = mul i64 1, %44
  %46 = call i64 @recv(i32 noundef %38, ptr noundef %41, i64 noundef %45, i32 noundef 0)
  %47 = trunc i64 %46 to i32
  store i32 %47, ptr %6, align 4
  %48 = load i32, ptr %6, align 4
  %49 = icmp eq i32 %48, -1
  br i1 %49, label %53, label %50

50:                                               ; preds = %37
  %51 = load i32, ptr %6, align 4
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %50, %37
  br label %76

54:                                               ; preds = %50
  %55 = load ptr, ptr %5, align 8
  %56 = load i64, ptr %10, align 8
  %57 = load i32, ptr %6, align 4
  %58 = sext i32 %57 to i64
  %59 = udiv i64 %58, 1
  %60 = add i64 %56, %59
  %61 = getelementptr inbounds nuw i8, ptr %55, i64 %60
  store i8 0, ptr %61, align 1
  %62 = load ptr, ptr %5, align 8
  %63 = call ptr @strchr(ptr noundef %62, i32 noundef 13) #6
  store ptr %63, ptr %8, align 8
  %64 = load ptr, ptr %8, align 8
  %65 = icmp ne ptr %64, null
  br i1 %65, label %66, label %68

66:                                               ; preds = %54
  %67 = load ptr, ptr %8, align 8
  store i8 0, ptr %67, align 1
  br label %68

68:                                               ; preds = %66, %54
  %69 = load ptr, ptr %5, align 8
  %70 = call ptr @strchr(ptr noundef %69, i32 noundef 10) #6
  store ptr %70, ptr %8, align 8
  %71 = load ptr, ptr %8, align 8
  %72 = icmp ne ptr %71, null
  br i1 %72, label %73, label %75

73:                                               ; preds = %68
  %74 = load ptr, ptr %8, align 8
  store i8 0, ptr %74, align 1
  br label %75

75:                                               ; preds = %73, %68
  br label %76

76:                                               ; preds = %75, %53, %36, %25
  %77 = load i32, ptr %9, align 4
  %78 = icmp ne i32 %77, -1
  br i1 %78, label %79, label %82

79:                                               ; preds = %76
  %80 = load i32, ptr %9, align 4
  %81 = call i32 @close(i32 noundef %80)
  br label %82

82:                                               ; preds = %79, %76
  %83 = load ptr, ptr %5, align 8
  %84 = load ptr, ptr %2, align 8
  store ptr %83, ptr %84, align 8
  %85 = load ptr, ptr %3, align 8
  %86 = load ptr, ptr %85, align 8
  store ptr %86, ptr %11, align 8
  %87 = load ptr, ptr %11, align 8
  %88 = call noalias ptr @popen(ptr noundef %87, ptr noundef @.str.1)
  store ptr %88, ptr %12, align 8
  %89 = load ptr, ptr %12, align 8
  %90 = icmp ne ptr %89, null
  br i1 %90, label %91, label %94

91:                                               ; preds = %82
  %92 = load ptr, ptr %12, align 8
  %93 = call i32 @pclose(ptr noundef %92)
  br label %94

94:                                               ; preds = %91, %82
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
