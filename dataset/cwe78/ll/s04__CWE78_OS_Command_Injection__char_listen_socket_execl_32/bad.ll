; ModuleID = 'data/C/testcases/CWE78_OS_Command_Injection/s04/CWE78_OS_Command_Injection__char_listen_socket_execl_32.c'
source_filename = "data/C/testcases/CWE78_OS_Command_Injection/s04/CWE78_OS_Command_Injection__char_listen_socket_execl_32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.sockaddr_in = type { i16, i16, %struct.in_addr, [8 x i8] }
%struct.in_addr = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"/bin/sh\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"-c\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE78_OS_Command_Injection__char_listen_socket_execl_32_bad() #0 {
  %1 = alloca ptr, align 8
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  %4 = alloca [100 x i8], align 16
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.sockaddr_in, align 4
  %8 = alloca ptr, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
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
  store i32 -1, ptr %10, align 4
  %19 = load ptr, ptr %5, align 8
  %20 = call i64 @strlen(ptr noundef %19) #6
  store i64 %20, ptr %11, align 8
  br label %21

21:                                               ; preds = %0
  %22 = call i32 @socket(i32 noundef 2, i32 noundef 1, i32 noundef 6) #7
  store i32 %22, ptr %9, align 4
  %23 = load i32, ptr %9, align 4
  %24 = icmp eq i32 %23, -1
  br i1 %24, label %25, label %26

25:                                               ; preds = %21
  br label %86

26:                                               ; preds = %21
  call void @llvm.memset.p0.i64(ptr align 4 %7, i8 0, i64 16, i1 false)
  %27 = getelementptr inbounds nuw %struct.sockaddr_in, ptr %7, i32 0, i32 0
  store i16 2, ptr %27, align 4
  %28 = getelementptr inbounds nuw %struct.sockaddr_in, ptr %7, i32 0, i32 2
  %29 = getelementptr inbounds nuw %struct.in_addr, ptr %28, i32 0, i32 0
  store i32 0, ptr %29, align 4
  %30 = call zeroext i16 @htons(i16 noundef zeroext 27015) #8
  %31 = getelementptr inbounds nuw %struct.sockaddr_in, ptr %7, i32 0, i32 1
  store i16 %30, ptr %31, align 2
  %32 = load i32, ptr %9, align 4
  %33 = call i32 @bind(i32 noundef %32, ptr noundef %7, i32 noundef 16) #7
  %34 = icmp eq i32 %33, -1
  br i1 %34, label %35, label %36

35:                                               ; preds = %26
  br label %86

36:                                               ; preds = %26
  %37 = load i32, ptr %9, align 4
  %38 = call i32 @listen(i32 noundef %37, i32 noundef 5) #7
  %39 = icmp eq i32 %38, -1
  br i1 %39, label %40, label %41

40:                                               ; preds = %36
  br label %86

41:                                               ; preds = %36
  %42 = load i32, ptr %9, align 4
  %43 = call i32 @accept(i32 noundef %42, ptr noundef null, ptr noundef null)
  store i32 %43, ptr %10, align 4
  %44 = load i32, ptr %10, align 4
  %45 = icmp eq i32 %44, -1
  br i1 %45, label %46, label %47

46:                                               ; preds = %41
  br label %86

47:                                               ; preds = %41
  %48 = load i32, ptr %10, align 4
  %49 = load ptr, ptr %5, align 8
  %50 = load i64, ptr %11, align 8
  %51 = getelementptr inbounds nuw i8, ptr %49, i64 %50
  %52 = load i64, ptr %11, align 8
  %53 = sub i64 100, %52
  %54 = sub i64 %53, 1
  %55 = mul i64 1, %54
  %56 = call i64 @recv(i32 noundef %48, ptr noundef %51, i64 noundef %55, i32 noundef 0)
  %57 = trunc i64 %56 to i32
  store i32 %57, ptr %6, align 4
  %58 = load i32, ptr %6, align 4
  %59 = icmp eq i32 %58, -1
  br i1 %59, label %63, label %60

60:                                               ; preds = %47
  %61 = load i32, ptr %6, align 4
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %60, %47
  br label %86

64:                                               ; preds = %60
  %65 = load ptr, ptr %5, align 8
  %66 = load i64, ptr %11, align 8
  %67 = load i32, ptr %6, align 4
  %68 = sext i32 %67 to i64
  %69 = udiv i64 %68, 1
  %70 = add i64 %66, %69
  %71 = getelementptr inbounds nuw i8, ptr %65, i64 %70
  store i8 0, ptr %71, align 1
  %72 = load ptr, ptr %5, align 8
  %73 = call ptr @strchr(ptr noundef %72, i32 noundef 13) #6
  store ptr %73, ptr %8, align 8
  %74 = load ptr, ptr %8, align 8
  %75 = icmp ne ptr %74, null
  br i1 %75, label %76, label %78

76:                                               ; preds = %64
  %77 = load ptr, ptr %8, align 8
  store i8 0, ptr %77, align 1
  br label %78

78:                                               ; preds = %76, %64
  %79 = load ptr, ptr %5, align 8
  %80 = call ptr @strchr(ptr noundef %79, i32 noundef 10) #6
  store ptr %80, ptr %8, align 8
  %81 = load ptr, ptr %8, align 8
  %82 = icmp ne ptr %81, null
  br i1 %82, label %83, label %85

83:                                               ; preds = %78
  %84 = load ptr, ptr %8, align 8
  store i8 0, ptr %84, align 1
  br label %85

85:                                               ; preds = %83, %78
  br label %86

86:                                               ; preds = %85, %63, %46, %40, %35, %25
  %87 = load i32, ptr %9, align 4
  %88 = icmp ne i32 %87, -1
  br i1 %88, label %89, label %92

89:                                               ; preds = %86
  %90 = load i32, ptr %9, align 4
  %91 = call i32 @close(i32 noundef %90)
  br label %92

92:                                               ; preds = %89, %86
  %93 = load i32, ptr %10, align 4
  %94 = icmp ne i32 %93, -1
  br i1 %94, label %95, label %98

95:                                               ; preds = %92
  %96 = load i32, ptr %10, align 4
  %97 = call i32 @close(i32 noundef %96)
  br label %98

98:                                               ; preds = %95, %92
  %99 = load ptr, ptr %5, align 8
  %100 = load ptr, ptr %2, align 8
  store ptr %99, ptr %100, align 8
  %101 = load ptr, ptr %3, align 8
  %102 = load ptr, ptr %101, align 8
  store ptr %102, ptr %12, align 8
  %103 = load ptr, ptr %12, align 8
  %104 = call i32 (ptr, ptr, ...) @execl(ptr noundef @.str, ptr noundef @.str, ptr noundef @.str.1, ptr noundef %103, ptr noundef null) #7
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
