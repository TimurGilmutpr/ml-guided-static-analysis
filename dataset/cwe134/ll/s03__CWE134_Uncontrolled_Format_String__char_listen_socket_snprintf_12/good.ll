; ModuleID = '/home/timur/Desktop/juliet/data/C/testcases/CWE134_Uncontrolled_Format_String/s03/CWE134_Uncontrolled_Format_String__char_listen_socket_snprintf_12.c'
source_filename = "/home/timur/Desktop/juliet/data/C/testcases/CWE134_Uncontrolled_Format_String/s03/CWE134_Uncontrolled_Format_String__char_listen_socket_snprintf_12.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.sockaddr_in = type { i16, i16, %struct.in_addr, [8 x i8] }
%struct.in_addr = type { i32 }

@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"fixedstringtest\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__char_listen_socket_snprintf_12_good() #0 {
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
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.sockaddr_in, align 4
  %11 = alloca ptr, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca [100 x i8], align 16
  %16 = alloca [100 x i8], align 16
  call void @llvm.memset.p0.i64(ptr align 16 %2, i8 0, i64 100, i1 false)
  %17 = getelementptr inbounds [100 x i8], ptr %2, i64 0, i64 0
  store ptr %17, ptr %1, align 8
  %18 = call i32 (...) @globalReturnsTrueOrFalse()
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %101

20:                                               ; preds = %0
  store i32 -1, ptr %6, align 4
  store i32 -1, ptr %7, align 4
  %21 = load ptr, ptr %1, align 8
  %22 = call i64 @strlen(ptr noundef %21) #6
  store i64 %22, ptr %8, align 8
  br label %23

23:                                               ; preds = %20
  %24 = call i32 @socket(i32 noundef 2, i32 noundef 1, i32 noundef 6) #7
  store i32 %24, ptr %6, align 4
  %25 = load i32, ptr %6, align 4
  %26 = icmp eq i32 %25, -1
  br i1 %26, label %27, label %28

27:                                               ; preds = %23
  br label %88

28:                                               ; preds = %23
  call void @llvm.memset.p0.i64(ptr align 4 %4, i8 0, i64 16, i1 false)
  %29 = getelementptr inbounds nuw %struct.sockaddr_in, ptr %4, i32 0, i32 0
  store i16 2, ptr %29, align 4
  %30 = getelementptr inbounds nuw %struct.sockaddr_in, ptr %4, i32 0, i32 2
  %31 = getelementptr inbounds nuw %struct.in_addr, ptr %30, i32 0, i32 0
  store i32 0, ptr %31, align 4
  %32 = call zeroext i16 @htons(i16 noundef zeroext 27015) #8
  %33 = getelementptr inbounds nuw %struct.sockaddr_in, ptr %4, i32 0, i32 1
  store i16 %32, ptr %33, align 2
  %34 = load i32, ptr %6, align 4
  %35 = call i32 @bind(i32 noundef %34, ptr noundef %4, i32 noundef 16) #7
  %36 = icmp eq i32 %35, -1
  br i1 %36, label %37, label %38

37:                                               ; preds = %28
  br label %88

38:                                               ; preds = %28
  %39 = load i32, ptr %6, align 4
  %40 = call i32 @listen(i32 noundef %39, i32 noundef 5) #7
  %41 = icmp eq i32 %40, -1
  br i1 %41, label %42, label %43

42:                                               ; preds = %38
  br label %88

43:                                               ; preds = %38
  %44 = load i32, ptr %6, align 4
  %45 = call i32 @accept(i32 noundef %44, ptr noundef null, ptr noundef null)
  store i32 %45, ptr %7, align 4
  %46 = load i32, ptr %7, align 4
  %47 = icmp eq i32 %46, -1
  br i1 %47, label %48, label %49

48:                                               ; preds = %43
  br label %88

49:                                               ; preds = %43
  %50 = load i32, ptr %7, align 4
  %51 = load ptr, ptr %1, align 8
  %52 = load i64, ptr %8, align 8
  %53 = getelementptr inbounds nuw i8, ptr %51, i64 %52
  %54 = load i64, ptr %8, align 8
  %55 = sub i64 100, %54
  %56 = sub i64 %55, 1
  %57 = mul i64 1, %56
  %58 = call i64 @recv(i32 noundef %50, ptr noundef %53, i64 noundef %57, i32 noundef 0)
  %59 = trunc i64 %58 to i32
  store i32 %59, ptr %3, align 4
  %60 = load i32, ptr %3, align 4
  %61 = icmp eq i32 %60, -1
  br i1 %61, label %65, label %62

62:                                               ; preds = %49
  %63 = load i32, ptr %3, align 4
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %62, %49
  br label %88

66:                                               ; preds = %62
  %67 = load ptr, ptr %1, align 8
  %68 = load i64, ptr %8, align 8
  %69 = load i32, ptr %3, align 4
  %70 = sext i32 %69 to i64
  %71 = udiv i64 %70, 1
  %72 = add i64 %68, %71
  %73 = getelementptr inbounds nuw i8, ptr %67, i64 %72
  store i8 0, ptr %73, align 1
  %74 = load ptr, ptr %1, align 8
  %75 = call ptr @strchr(ptr noundef %74, i32 noundef 13) #6
  store ptr %75, ptr %5, align 8
  %76 = load ptr, ptr %5, align 8
  %77 = icmp ne ptr %76, null
  br i1 %77, label %78, label %80

78:                                               ; preds = %66
  %79 = load ptr, ptr %5, align 8
  store i8 0, ptr %79, align 1
  br label %80

80:                                               ; preds = %78, %66
  %81 = load ptr, ptr %1, align 8
  %82 = call ptr @strchr(ptr noundef %81, i32 noundef 10) #6
  store ptr %82, ptr %5, align 8
  %83 = load ptr, ptr %5, align 8
  %84 = icmp ne ptr %83, null
  br i1 %84, label %85, label %87

85:                                               ; preds = %80
  %86 = load ptr, ptr %5, align 8
  store i8 0, ptr %86, align 1
  br label %87

87:                                               ; preds = %85, %80
  br label %88

88:                                               ; preds = %87, %65, %48, %42, %37, %27
  %89 = load i32, ptr %6, align 4
  %90 = icmp ne i32 %89, -1
  br i1 %90, label %91, label %94

91:                                               ; preds = %88
  %92 = load i32, ptr %6, align 4
  %93 = call i32 @close(i32 noundef %92)
  br label %94

94:                                               ; preds = %91, %88
  %95 = load i32, ptr %7, align 4
  %96 = icmp ne i32 %95, -1
  br i1 %96, label %97, label %100

97:                                               ; preds = %94
  %98 = load i32, ptr %7, align 4
  %99 = call i32 @close(i32 noundef %98)
  br label %100

100:                                              ; preds = %97, %94
  br label %182

101:                                              ; preds = %0
  store i32 -1, ptr %12, align 4
  store i32 -1, ptr %13, align 4
  %102 = load ptr, ptr %1, align 8
  %103 = call i64 @strlen(ptr noundef %102) #6
  store i64 %103, ptr %14, align 8
  br label %104

104:                                              ; preds = %101
  %105 = call i32 @socket(i32 noundef 2, i32 noundef 1, i32 noundef 6) #7
  store i32 %105, ptr %12, align 4
  %106 = load i32, ptr %12, align 4
  %107 = icmp eq i32 %106, -1
  br i1 %107, label %108, label %109

108:                                              ; preds = %104
  br label %169

109:                                              ; preds = %104
  call void @llvm.memset.p0.i64(ptr align 4 %10, i8 0, i64 16, i1 false)
  %110 = getelementptr inbounds nuw %struct.sockaddr_in, ptr %10, i32 0, i32 0
  store i16 2, ptr %110, align 4
  %111 = getelementptr inbounds nuw %struct.sockaddr_in, ptr %10, i32 0, i32 2
  %112 = getelementptr inbounds nuw %struct.in_addr, ptr %111, i32 0, i32 0
  store i32 0, ptr %112, align 4
  %113 = call zeroext i16 @htons(i16 noundef zeroext 27015) #8
  %114 = getelementptr inbounds nuw %struct.sockaddr_in, ptr %10, i32 0, i32 1
  store i16 %113, ptr %114, align 2
  %115 = load i32, ptr %12, align 4
  %116 = call i32 @bind(i32 noundef %115, ptr noundef %10, i32 noundef 16) #7
  %117 = icmp eq i32 %116, -1
  br i1 %117, label %118, label %119

118:                                              ; preds = %109
  br label %169

119:                                              ; preds = %109
  %120 = load i32, ptr %12, align 4
  %121 = call i32 @listen(i32 noundef %120, i32 noundef 5) #7
  %122 = icmp eq i32 %121, -1
  br i1 %122, label %123, label %124

123:                                              ; preds = %119
  br label %169

124:                                              ; preds = %119
  %125 = load i32, ptr %12, align 4
  %126 = call i32 @accept(i32 noundef %125, ptr noundef null, ptr noundef null)
  store i32 %126, ptr %13, align 4
  %127 = load i32, ptr %13, align 4
  %128 = icmp eq i32 %127, -1
  br i1 %128, label %129, label %130

129:                                              ; preds = %124
  br label %169

130:                                              ; preds = %124
  %131 = load i32, ptr %13, align 4
  %132 = load ptr, ptr %1, align 8
  %133 = load i64, ptr %14, align 8
  %134 = getelementptr inbounds nuw i8, ptr %132, i64 %133
  %135 = load i64, ptr %14, align 8
  %136 = sub i64 100, %135
  %137 = sub i64 %136, 1
  %138 = mul i64 1, %137
  %139 = call i64 @recv(i32 noundef %131, ptr noundef %134, i64 noundef %138, i32 noundef 0)
  %140 = trunc i64 %139 to i32
  store i32 %140, ptr %9, align 4
  %141 = load i32, ptr %9, align 4
  %142 = icmp eq i32 %141, -1
  br i1 %142, label %146, label %143

143:                                              ; preds = %130
  %144 = load i32, ptr %9, align 4
  %145 = icmp eq i32 %144, 0
  br i1 %145, label %146, label %147

146:                                              ; preds = %143, %130
  br label %169

147:                                              ; preds = %143
  %148 = load ptr, ptr %1, align 8
  %149 = load i64, ptr %14, align 8
  %150 = load i32, ptr %9, align 4
  %151 = sext i32 %150 to i64
  %152 = udiv i64 %151, 1
  %153 = add i64 %149, %152
  %154 = getelementptr inbounds nuw i8, ptr %148, i64 %153
  store i8 0, ptr %154, align 1
  %155 = load ptr, ptr %1, align 8
  %156 = call ptr @strchr(ptr noundef %155, i32 noundef 13) #6
  store ptr %156, ptr %11, align 8
  %157 = load ptr, ptr %11, align 8
  %158 = icmp ne ptr %157, null
  br i1 %158, label %159, label %161

159:                                              ; preds = %147
  %160 = load ptr, ptr %11, align 8
  store i8 0, ptr %160, align 1
  br label %161

161:                                              ; preds = %159, %147
  %162 = load ptr, ptr %1, align 8
  %163 = call ptr @strchr(ptr noundef %162, i32 noundef 10) #6
  store ptr %163, ptr %11, align 8
  %164 = load ptr, ptr %11, align 8
  %165 = icmp ne ptr %164, null
  br i1 %165, label %166, label %168

166:                                              ; preds = %161
  %167 = load ptr, ptr %11, align 8
  store i8 0, ptr %167, align 1
  br label %168

168:                                              ; preds = %166, %161
  br label %169

169:                                              ; preds = %168, %146, %129, %123, %118, %108
  %170 = load i32, ptr %12, align 4
  %171 = icmp ne i32 %170, -1
  br i1 %171, label %172, label %175

172:                                              ; preds = %169
  %173 = load i32, ptr %12, align 4
  %174 = call i32 @close(i32 noundef %173)
  br label %175

175:                                              ; preds = %172, %169
  %176 = load i32, ptr %13, align 4
  %177 = icmp ne i32 %176, -1
  br i1 %177, label %178, label %181

178:                                              ; preds = %175
  %179 = load i32, ptr %13, align 4
  %180 = call i32 @close(i32 noundef %179)
  br label %181

181:                                              ; preds = %178, %175
  br label %182

182:                                              ; preds = %181, %100
  %183 = call i32 (...) @globalReturnsTrueOrFalse()
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %190

185:                                              ; preds = %182
  call void @llvm.memset.p0.i64(ptr align 16 %15, i8 0, i64 100, i1 false)
  %186 = getelementptr inbounds [100 x i8], ptr %15, i64 0, i64 0
  %187 = load ptr, ptr %1, align 8
  %188 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %186, i64 noundef 99, ptr noundef @.str, ptr noundef %187) #7
  %189 = getelementptr inbounds [100 x i8], ptr %15, i64 0, i64 0
  call void @printLine(ptr noundef %189)
  br label %195

190:                                              ; preds = %182
  call void @llvm.memset.p0.i64(ptr align 16 %16, i8 0, i64 100, i1 false)
  %191 = getelementptr inbounds [100 x i8], ptr %16, i64 0, i64 0
  %192 = load ptr, ptr %1, align 8
  %193 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %191, i64 noundef 99, ptr noundef @.str, ptr noundef %192) #7
  %194 = getelementptr inbounds [100 x i8], ptr %16, i64 0, i64 0
  call void @printLine(ptr noundef %194)
  br label %195

195:                                              ; preds = %190, %185
  ret void
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #1

declare i32 @globalReturnsTrueOrFalse(...) #2

; Function Attrs: nounwind willreturn memory(read)
declare i64 @strlen(ptr noundef) #3

; Function Attrs: nounwind
declare i32 @socket(i32 noundef, i32 noundef, i32 noundef) #4

; Function Attrs: nounwind willreturn memory(none)
declare zeroext i16 @htons(i16 noundef zeroext) #5

; Function Attrs: nounwind
declare i32 @bind(i32 noundef, ptr noundef, i32 noundef) #4

; Function Attrs: nounwind
declare i32 @listen(i32 noundef, i32 noundef) #4

declare i32 @accept(i32 noundef, ptr noundef, ptr noundef) #2

declare i64 @recv(i32 noundef, ptr noundef, i64 noundef, i32 noundef) #2

; Function Attrs: nounwind willreturn memory(read)
declare ptr @strchr(ptr noundef, i32 noundef) #3

declare i32 @close(i32 noundef) #2

; Function Attrs: nounwind
declare i32 @snprintf(ptr noundef, i64 noundef, ptr noundef, ...) #4

declare void @printLine(ptr noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal void @goodG2B() #0 {
  %1 = alloca ptr, align 8
  %2 = alloca [100 x i8], align 16
  %3 = alloca [100 x i8], align 16
  %4 = alloca [100 x i8], align 16
  call void @llvm.memset.p0.i64(ptr align 16 %2, i8 0, i64 100, i1 false)
  %5 = getelementptr inbounds [100 x i8], ptr %2, i64 0, i64 0
  store ptr %5, ptr %1, align 8
  %6 = call i32 (...) @globalReturnsTrueOrFalse()
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %0
  %9 = load ptr, ptr %1, align 8
  %10 = call ptr @strcpy(ptr noundef %9, ptr noundef @.str.1) #7
  br label %14

11:                                               ; preds = %0
  %12 = load ptr, ptr %1, align 8
  %13 = call ptr @strcpy(ptr noundef %12, ptr noundef @.str.1) #7
  br label %14

14:                                               ; preds = %11, %8
  %15 = call i32 (...) @globalReturnsTrueOrFalse()
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %14
  call void @llvm.memset.p0.i64(ptr align 16 %3, i8 0, i64 100, i1 false)
  %18 = getelementptr inbounds [100 x i8], ptr %3, i64 0, i64 0
  %19 = load ptr, ptr %1, align 8
  %20 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %18, i64 noundef 99, ptr noundef %19) #7
  %21 = getelementptr inbounds [100 x i8], ptr %3, i64 0, i64 0
  call void @printLine(ptr noundef %21)
  br label %27

22:                                               ; preds = %14
  call void @llvm.memset.p0.i64(ptr align 16 %4, i8 0, i64 100, i1 false)
  %23 = getelementptr inbounds [100 x i8], ptr %4, i64 0, i64 0
  %24 = load ptr, ptr %1, align 8
  %25 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %23, i64 noundef 99, ptr noundef %24) #7
  %26 = getelementptr inbounds [100 x i8], ptr %4, i64 0, i64 0
  call void @printLine(ptr noundef %26)
  br label %27

27:                                               ; preds = %22, %17
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
