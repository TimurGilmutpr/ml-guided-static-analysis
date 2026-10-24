; ModuleID = '/home/timur/Desktop/juliet/data/C/testcases/CWE134_Uncontrolled_Format_String/s01/CWE134_Uncontrolled_Format_String__char_connect_socket_fprintf_12.c'
source_filename = "/home/timur/Desktop/juliet/data/C/testcases/CWE134_Uncontrolled_Format_String/s01/CWE134_Uncontrolled_Format_String__char_connect_socket_fprintf_12.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.sockaddr_in = type { i16, i16, %struct.in_addr, [8 x i8] }
%struct.in_addr = type { i32 }

@.str = private unnamed_addr constant [10 x i8] c"127.0.0.1\00", align 1
@stdout = external global ptr, align 8
@.str.1 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"fixedstringtest\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__char_connect_socket_fprintf_12_good() #0 {
  call void @goodB2G()
  call void @goodG2B()
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @goodB2G() #0 {
  %1 = alloca ptr, align 8
  %2 = alloca [100 x i8], align 16
  %3 = alloca i32, align 4
  %4 = alloca %struct.sockaddr_in, align 4
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.sockaddr_in, align 4
  %10 = alloca ptr, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  call void @llvm.memset.p0.i64(ptr align 16 %2, i8 0, i64 100, i1 false)
  %13 = getelementptr inbounds [100 x i8], ptr %2, i64 0, i64 0
  store ptr %13, ptr %1, align 8
  %14 = call i32 (...) @globalReturnsTrueOrFalse()
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %81

16:                                               ; preds = %0
  store i32 -1, ptr %6, align 4
  %17 = load ptr, ptr %1, align 8
  %18 = call i64 @strlen(ptr noundef %17) #6
  store i64 %18, ptr %7, align 8
  br label %19

19:                                               ; preds = %16
  %20 = call i32 @socket(i32 noundef 2, i32 noundef 1, i32 noundef 6) #7
  store i32 %20, ptr %6, align 4
  %21 = load i32, ptr %6, align 4
  %22 = icmp eq i32 %21, -1
  br i1 %22, label %23, label %24

23:                                               ; preds = %19
  br label %74

24:                                               ; preds = %19
  call void @llvm.memset.p0.i64(ptr align 4 %4, i8 0, i64 16, i1 false)
  %25 = getelementptr inbounds nuw %struct.sockaddr_in, ptr %4, i32 0, i32 0
  store i16 2, ptr %25, align 4
  %26 = call i32 @inet_addr(ptr noundef @.str) #7
  %27 = getelementptr inbounds nuw %struct.sockaddr_in, ptr %4, i32 0, i32 2
  %28 = getelementptr inbounds nuw %struct.in_addr, ptr %27, i32 0, i32 0
  store i32 %26, ptr %28, align 4
  %29 = call zeroext i16 @htons(i16 noundef zeroext 27015) #8
  %30 = getelementptr inbounds nuw %struct.sockaddr_in, ptr %4, i32 0, i32 1
  store i16 %29, ptr %30, align 2
  %31 = load i32, ptr %6, align 4
  %32 = call i32 @connect(i32 noundef %31, ptr noundef %4, i32 noundef 16)
  %33 = icmp eq i32 %32, -1
  br i1 %33, label %34, label %35

34:                                               ; preds = %24
  br label %74

35:                                               ; preds = %24
  %36 = load i32, ptr %6, align 4
  %37 = load ptr, ptr %1, align 8
  %38 = load i64, ptr %7, align 8
  %39 = getelementptr inbounds nuw i8, ptr %37, i64 %38
  %40 = load i64, ptr %7, align 8
  %41 = sub i64 100, %40
  %42 = sub i64 %41, 1
  %43 = mul i64 1, %42
  %44 = call i64 @recv(i32 noundef %36, ptr noundef %39, i64 noundef %43, i32 noundef 0)
  %45 = trunc i64 %44 to i32
  store i32 %45, ptr %3, align 4
  %46 = load i32, ptr %3, align 4
  %47 = icmp eq i32 %46, -1
  br i1 %47, label %51, label %48

48:                                               ; preds = %35
  %49 = load i32, ptr %3, align 4
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %48, %35
  br label %74

52:                                               ; preds = %48
  %53 = load ptr, ptr %1, align 8
  %54 = load i64, ptr %7, align 8
  %55 = load i32, ptr %3, align 4
  %56 = sext i32 %55 to i64
  %57 = udiv i64 %56, 1
  %58 = add i64 %54, %57
  %59 = getelementptr inbounds nuw i8, ptr %53, i64 %58
  store i8 0, ptr %59, align 1
  %60 = load ptr, ptr %1, align 8
  %61 = call ptr @strchr(ptr noundef %60, i32 noundef 13) #6
  store ptr %61, ptr %5, align 8
  %62 = load ptr, ptr %5, align 8
  %63 = icmp ne ptr %62, null
  br i1 %63, label %64, label %66

64:                                               ; preds = %52
  %65 = load ptr, ptr %5, align 8
  store i8 0, ptr %65, align 1
  br label %66

66:                                               ; preds = %64, %52
  %67 = load ptr, ptr %1, align 8
  %68 = call ptr @strchr(ptr noundef %67, i32 noundef 10) #6
  store ptr %68, ptr %5, align 8
  %69 = load ptr, ptr %5, align 8
  %70 = icmp ne ptr %69, null
  br i1 %70, label %71, label %73

71:                                               ; preds = %66
  %72 = load ptr, ptr %5, align 8
  store i8 0, ptr %72, align 1
  br label %73

73:                                               ; preds = %71, %66
  br label %74

74:                                               ; preds = %73, %51, %34, %23
  %75 = load i32, ptr %6, align 4
  %76 = icmp ne i32 %75, -1
  br i1 %76, label %77, label %80

77:                                               ; preds = %74
  %78 = load i32, ptr %6, align 4
  %79 = call i32 @close(i32 noundef %78)
  br label %80

80:                                               ; preds = %77, %74
  br label %146

81:                                               ; preds = %0
  store i32 -1, ptr %11, align 4
  %82 = load ptr, ptr %1, align 8
  %83 = call i64 @strlen(ptr noundef %82) #6
  store i64 %83, ptr %12, align 8
  br label %84

84:                                               ; preds = %81
  %85 = call i32 @socket(i32 noundef 2, i32 noundef 1, i32 noundef 6) #7
  store i32 %85, ptr %11, align 4
  %86 = load i32, ptr %11, align 4
  %87 = icmp eq i32 %86, -1
  br i1 %87, label %88, label %89

88:                                               ; preds = %84
  br label %139

89:                                               ; preds = %84
  call void @llvm.memset.p0.i64(ptr align 4 %9, i8 0, i64 16, i1 false)
  %90 = getelementptr inbounds nuw %struct.sockaddr_in, ptr %9, i32 0, i32 0
  store i16 2, ptr %90, align 4
  %91 = call i32 @inet_addr(ptr noundef @.str) #7
  %92 = getelementptr inbounds nuw %struct.sockaddr_in, ptr %9, i32 0, i32 2
  %93 = getelementptr inbounds nuw %struct.in_addr, ptr %92, i32 0, i32 0
  store i32 %91, ptr %93, align 4
  %94 = call zeroext i16 @htons(i16 noundef zeroext 27015) #8
  %95 = getelementptr inbounds nuw %struct.sockaddr_in, ptr %9, i32 0, i32 1
  store i16 %94, ptr %95, align 2
  %96 = load i32, ptr %11, align 4
  %97 = call i32 @connect(i32 noundef %96, ptr noundef %9, i32 noundef 16)
  %98 = icmp eq i32 %97, -1
  br i1 %98, label %99, label %100

99:                                               ; preds = %89
  br label %139

100:                                              ; preds = %89
  %101 = load i32, ptr %11, align 4
  %102 = load ptr, ptr %1, align 8
  %103 = load i64, ptr %12, align 8
  %104 = getelementptr inbounds nuw i8, ptr %102, i64 %103
  %105 = load i64, ptr %12, align 8
  %106 = sub i64 100, %105
  %107 = sub i64 %106, 1
  %108 = mul i64 1, %107
  %109 = call i64 @recv(i32 noundef %101, ptr noundef %104, i64 noundef %108, i32 noundef 0)
  %110 = trunc i64 %109 to i32
  store i32 %110, ptr %8, align 4
  %111 = load i32, ptr %8, align 4
  %112 = icmp eq i32 %111, -1
  br i1 %112, label %116, label %113

113:                                              ; preds = %100
  %114 = load i32, ptr %8, align 4
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %116, label %117

116:                                              ; preds = %113, %100
  br label %139

117:                                              ; preds = %113
  %118 = load ptr, ptr %1, align 8
  %119 = load i64, ptr %12, align 8
  %120 = load i32, ptr %8, align 4
  %121 = sext i32 %120 to i64
  %122 = udiv i64 %121, 1
  %123 = add i64 %119, %122
  %124 = getelementptr inbounds nuw i8, ptr %118, i64 %123
  store i8 0, ptr %124, align 1
  %125 = load ptr, ptr %1, align 8
  %126 = call ptr @strchr(ptr noundef %125, i32 noundef 13) #6
  store ptr %126, ptr %10, align 8
  %127 = load ptr, ptr %10, align 8
  %128 = icmp ne ptr %127, null
  br i1 %128, label %129, label %131

129:                                              ; preds = %117
  %130 = load ptr, ptr %10, align 8
  store i8 0, ptr %130, align 1
  br label %131

131:                                              ; preds = %129, %117
  %132 = load ptr, ptr %1, align 8
  %133 = call ptr @strchr(ptr noundef %132, i32 noundef 10) #6
  store ptr %133, ptr %10, align 8
  %134 = load ptr, ptr %10, align 8
  %135 = icmp ne ptr %134, null
  br i1 %135, label %136, label %138

136:                                              ; preds = %131
  %137 = load ptr, ptr %10, align 8
  store i8 0, ptr %137, align 1
  br label %138

138:                                              ; preds = %136, %131
  br label %139

139:                                              ; preds = %138, %116, %99, %88
  %140 = load i32, ptr %11, align 4
  %141 = icmp ne i32 %140, -1
  br i1 %141, label %142, label %145

142:                                              ; preds = %139
  %143 = load i32, ptr %11, align 4
  %144 = call i32 @close(i32 noundef %143)
  br label %145

145:                                              ; preds = %142, %139
  br label %146

146:                                              ; preds = %145, %80
  %147 = call i32 (...) @globalReturnsTrueOrFalse()
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %153

149:                                              ; preds = %146
  %150 = load ptr, ptr @stdout, align 8
  %151 = load ptr, ptr %1, align 8
  %152 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %150, ptr noundef @.str.1, ptr noundef %151) #7
  br label %157

153:                                              ; preds = %146
  %154 = load ptr, ptr @stdout, align 8
  %155 = load ptr, ptr %1, align 8
  %156 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %154, ptr noundef @.str.1, ptr noundef %155) #7
  br label %157

157:                                              ; preds = %153, %149
  ret void
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #1

declare i32 @globalReturnsTrueOrFalse(...) #2

; Function Attrs: nounwind willreturn memory(read)
declare i64 @strlen(ptr noundef) #3

; Function Attrs: nounwind
declare i32 @socket(i32 noundef, i32 noundef, i32 noundef) #4

; Function Attrs: nounwind
declare i32 @inet_addr(ptr noundef) #4

; Function Attrs: nounwind willreturn memory(none)
declare zeroext i16 @htons(i16 noundef zeroext) #5

declare i32 @connect(i32 noundef, ptr noundef, i32 noundef) #2

declare i64 @recv(i32 noundef, ptr noundef, i64 noundef, i32 noundef) #2

; Function Attrs: nounwind willreturn memory(read)
declare ptr @strchr(ptr noundef, i32 noundef) #3

declare i32 @close(i32 noundef) #2

; Function Attrs: nounwind
declare i32 @fprintf(ptr noundef, ptr noundef, ...) #4

; Function Attrs: noinline nounwind optnone uwtable
define internal void @goodG2B() #0 {
  %1 = alloca ptr, align 8
  %2 = alloca [100 x i8], align 16
  call void @llvm.memset.p0.i64(ptr align 16 %2, i8 0, i64 100, i1 false)
  %3 = getelementptr inbounds [100 x i8], ptr %2, i64 0, i64 0
  store ptr %3, ptr %1, align 8
  %4 = call i32 (...) @globalReturnsTrueOrFalse()
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %6, label %9

6:                                                ; preds = %0
  %7 = load ptr, ptr %1, align 8
  %8 = call ptr @strcpy(ptr noundef %7, ptr noundef @.str.2) #7
  br label %12

9:                                                ; preds = %0
  %10 = load ptr, ptr %1, align 8
  %11 = call ptr @strcpy(ptr noundef %10, ptr noundef @.str.2) #7
  br label %12

12:                                               ; preds = %9, %6
  %13 = call i32 (...) @globalReturnsTrueOrFalse()
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %12
  %16 = load ptr, ptr @stdout, align 8
  %17 = load ptr, ptr %1, align 8
  %18 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %16, ptr noundef %17) #7
  br label %23

19:                                               ; preds = %12
  %20 = load ptr, ptr @stdout, align 8
  %21 = load ptr, ptr %1, align 8
  %22 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %20, ptr noundef %21) #7
  br label %23

23:                                               ; preds = %19, %15
  ret void
}

; Function Attrs: nounwind
declare ptr @strcpy(ptr noundef, ptr noundef) #4

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind willreturn memory(read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind willreturn memory(none) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
