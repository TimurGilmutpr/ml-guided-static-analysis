; ModuleID = 'data/C/testcases/CWE23_Relative_Path_Traversal/s03/CWE23_Relative_Path_Traversal__wchar_t_connect_socket_ifstream_32.cpp'
source_filename = "data/C/testcases/CWE23_Relative_Path_Traversal/s03/CWE23_Relative_Path_Traversal__wchar_t_connect_socket_ifstream_32.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.sockaddr_in = type { i16, i16, %struct.in_addr, [8 x i8] }
%struct.in_addr = type { i32 }
%"class.std::basic_ifstream" = type { %"class.std::basic_istream.base", %"class.std::basic_filebuf", %"class.std::basic_ios" }
%"class.std::basic_istream.base" = type { ptr, i64 }
%"class.std::basic_filebuf" = type { %"class.std::basic_streambuf", %union.pthread_mutex_t, %"class.std::__basic_file", i32, %struct.__mbstate_t, %struct.__mbstate_t, %struct.__mbstate_t, ptr, i64, i8, i8, i8, i8, ptr, ptr, i8, ptr, ptr, i64, ptr, ptr }
%"class.std::basic_streambuf" = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, %"class.std::locale" }
%"class.std::locale" = type { ptr }
%union.pthread_mutex_t = type { %struct.__pthread_mutex_s }
%struct.__pthread_mutex_s = type { i32, i32, i32, i32, i32, i16, i16, %struct.__pthread_internal_list }
%struct.__pthread_internal_list = type { ptr, ptr }
%"class.std::__basic_file" = type <{ ptr, i8, [7 x i8] }>
%struct.__mbstate_t = type { i32, %union.anon }
%union.anon = type { i32 }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }

$_ZSt6wcschrPww = comdat any

@.str = private unnamed_addr constant [10 x i8] c"127.0.0.1\00", align 1

; Function Attrs: mustprogress noinline optnone uwtable
define dso_local void @_ZN65CWE23_Relative_Path_Traversal__wchar_t_connect_socket_ifstream_323badEv() #0 personality ptr @__gxx_personality_v0 {
  %1 = alloca ptr, align 8
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  %4 = alloca [4096 x i32], align 16
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.sockaddr_in, align 4
  %8 = alloca ptr, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca ptr, align 8
  %12 = alloca %"class.std::basic_ifstream", align 8
  %13 = alloca ptr, align 8
  %14 = alloca i32, align 4
  store ptr %1, ptr %2, align 8
  store ptr %1, ptr %3, align 8
  call void @llvm.memset.p0.i64(ptr align 16 %4, i8 0, i64 16384, i1 false)
  %15 = getelementptr inbounds [4096 x i32], ptr %4, i32 0, i32 0
  store i32 47, ptr %15, align 16
  %16 = getelementptr inbounds [4096 x i32], ptr %4, i32 0, i32 1
  store i32 116, ptr %16, align 4
  %17 = getelementptr inbounds [4096 x i32], ptr %4, i32 0, i32 2
  store i32 109, ptr %17, align 8
  %18 = getelementptr inbounds [4096 x i32], ptr %4, i32 0, i32 3
  store i32 112, ptr %18, align 4
  %19 = getelementptr inbounds [4096 x i32], ptr %4, i32 0, i32 4
  store i32 47, ptr %19, align 16
  %20 = getelementptr inbounds [4096 x i32], ptr %4, i64 0, i64 0
  store ptr %20, ptr %1, align 8
  %21 = load ptr, ptr %2, align 8
  %22 = load ptr, ptr %21, align 8
  store ptr %22, ptr %5, align 8
  store i32 -1, ptr %9, align 4
  %23 = load ptr, ptr %5, align 8
  %24 = call i64 @wcslen(ptr noundef %23) #7
  store i64 %24, ptr %10, align 8
  br label %25

25:                                               ; preds = %0
  %26 = call i32 @socket(i32 noundef 2, i32 noundef 1, i32 noundef 6) #8
  store i32 %26, ptr %9, align 4
  %27 = load i32, ptr %9, align 4
  %28 = icmp eq i32 %27, -1
  br i1 %28, label %29, label %30

29:                                               ; preds = %25
  br label %80

30:                                               ; preds = %25
  call void @llvm.memset.p0.i64(ptr align 4 %7, i8 0, i64 16, i1 false)
  %31 = getelementptr inbounds nuw %struct.sockaddr_in, ptr %7, i32 0, i32 0
  store i16 2, ptr %31, align 4
  %32 = call i32 @inet_addr(ptr noundef @.str) #8
  %33 = getelementptr inbounds nuw %struct.sockaddr_in, ptr %7, i32 0, i32 2
  %34 = getelementptr inbounds nuw %struct.in_addr, ptr %33, i32 0, i32 0
  store i32 %32, ptr %34, align 4
  %35 = call zeroext i16 @htons(i16 noundef zeroext 27015) #9
  %36 = getelementptr inbounds nuw %struct.sockaddr_in, ptr %7, i32 0, i32 1
  store i16 %35, ptr %36, align 2
  %37 = load i32, ptr %9, align 4
  %38 = call i32 @connect(i32 noundef %37, ptr noundef %7, i32 noundef 16)
  %39 = icmp eq i32 %38, -1
  br i1 %39, label %40, label %41

40:                                               ; preds = %30
  br label %80

41:                                               ; preds = %30
  %42 = load i32, ptr %9, align 4
  %43 = load ptr, ptr %5, align 8
  %44 = load i64, ptr %10, align 8
  %45 = getelementptr inbounds nuw i32, ptr %43, i64 %44
  %46 = load i64, ptr %10, align 8
  %47 = sub i64 4096, %46
  %48 = sub i64 %47, 1
  %49 = mul i64 4, %48
  %50 = call i64 @recv(i32 noundef %42, ptr noundef %45, i64 noundef %49, i32 noundef 0)
  %51 = trunc i64 %50 to i32
  store i32 %51, ptr %6, align 4
  %52 = load i32, ptr %6, align 4
  %53 = icmp eq i32 %52, -1
  br i1 %53, label %57, label %54

54:                                               ; preds = %41
  %55 = load i32, ptr %6, align 4
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %54, %41
  br label %80

58:                                               ; preds = %54
  %59 = load ptr, ptr %5, align 8
  %60 = load i64, ptr %10, align 8
  %61 = load i32, ptr %6, align 4
  %62 = sext i32 %61 to i64
  %63 = udiv i64 %62, 4
  %64 = add i64 %60, %63
  %65 = getelementptr inbounds nuw i32, ptr %59, i64 %64
  store i32 0, ptr %65, align 4
  %66 = load ptr, ptr %5, align 8
  %67 = call noundef ptr @_ZSt6wcschrPww(ptr noundef %66, i32 noundef signext 13)
  store ptr %67, ptr %8, align 8
  %68 = load ptr, ptr %8, align 8
  %69 = icmp ne ptr %68, null
  br i1 %69, label %70, label %72

70:                                               ; preds = %58
  %71 = load ptr, ptr %8, align 8
  store i32 0, ptr %71, align 4
  br label %72

72:                                               ; preds = %70, %58
  %73 = load ptr, ptr %5, align 8
  %74 = call noundef ptr @_ZSt6wcschrPww(ptr noundef %73, i32 noundef signext 10)
  store ptr %74, ptr %8, align 8
  %75 = load ptr, ptr %8, align 8
  %76 = icmp ne ptr %75, null
  br i1 %76, label %77, label %79

77:                                               ; preds = %72
  %78 = load ptr, ptr %8, align 8
  store i32 0, ptr %78, align 4
  br label %79

79:                                               ; preds = %77, %72
  br label %80

80:                                               ; preds = %79, %57, %40, %29
  %81 = load i32, ptr %9, align 4
  %82 = icmp ne i32 %81, -1
  br i1 %82, label %83, label %86

83:                                               ; preds = %80
  %84 = load i32, ptr %9, align 4
  %85 = call i32 @close(i32 noundef %84)
  br label %86

86:                                               ; preds = %83, %80
  %87 = load ptr, ptr %5, align 8
  %88 = load ptr, ptr %2, align 8
  store ptr %87, ptr %88, align 8
  %89 = load ptr, ptr %3, align 8
  %90 = load ptr, ptr %89, align 8
  store ptr %90, ptr %11, align 8
  call void @_ZNSt14basic_ifstreamIcSt11char_traitsIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(256) %12)
  %91 = load ptr, ptr %11, align 8
  invoke void @_ZNSt14basic_ifstreamIcSt11char_traitsIcEE4openEPKcSt13_Ios_Openmode(ptr noundef nonnull align 8 dereferenceable(256) %12, ptr noundef %91, i32 noundef 8)
          to label %92 unwind label %94

92:                                               ; preds = %86
  invoke void @_ZNSt14basic_ifstreamIcSt11char_traitsIcEE5closeEv(ptr noundef nonnull align 8 dereferenceable(256) %12)
          to label %93 unwind label %94

93:                                               ; preds = %92
  call void @_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(256) %12) #8
  ret void

94:                                               ; preds = %92, %86
  %95 = landingpad { ptr, i32 }
          cleanup
  %96 = extractvalue { ptr, i32 } %95, 0
  store ptr %96, ptr %13, align 8
  %97 = extractvalue { ptr, i32 } %95, 1
  store i32 %97, ptr %14, align 4
  call void @_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(256) %12) #8
  br label %98

98:                                               ; preds = %94
  %99 = load ptr, ptr %13, align 8
  %100 = load i32, ptr %14, align 4
  %101 = insertvalue { ptr, i32 } poison, ptr %99, 0
  %102 = insertvalue { ptr, i32 } %101, i32 %100, 1
  resume { ptr, i32 } %102
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

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef ptr @_ZSt6wcschrPww(ptr noundef %0, i32 noundef signext %1) #6 comdat {
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  store ptr %0, ptr %3, align 8
  store i32 %1, ptr %4, align 4
  %5 = load ptr, ptr %3, align 8
  %6 = load i32, ptr %4, align 4
  %7 = call ptr @wcschr(ptr noundef %5, i32 noundef signext %6) #7
  ret ptr %7
}

declare i32 @close(i32 noundef) #5

declare void @_ZNSt14basic_ifstreamIcSt11char_traitsIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(256)) unnamed_addr #5

declare void @_ZNSt14basic_ifstreamIcSt11char_traitsIcEE4openEPKcSt13_Ios_Openmode(ptr noundef nonnull align 8 dereferenceable(256), ptr noundef, i32 noundef) #5

declare i32 @__gxx_personality_v0(...)

declare void @_ZNSt14basic_ifstreamIcSt11char_traitsIcEE5closeEv(ptr noundef nonnull align 8 dereferenceable(256)) #5

; Function Attrs: nounwind
declare void @_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(256)) unnamed_addr #3

; Function Attrs: nounwind willreturn memory(read)
declare ptr @wcschr(ptr noundef, i32 noundef signext) #2

attributes #0 = { mustprogress noinline optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #2 = { nounwind willreturn memory(read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind willreturn memory(none) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind willreturn memory(read) }
attributes #8 = { nounwind }
attributes #9 = { nounwind willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"Ubuntu clang version 21.1.8 (6ubuntu1)"}
