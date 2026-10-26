; ModuleID = 'data/C/testcases/CWE23_Relative_Path_Traversal/s03/CWE23_Relative_Path_Traversal__wchar_t_connect_socket_ifstream_14.cpp'
source_filename = "data/C/testcases/CWE23_Relative_Path_Traversal/s03/CWE23_Relative_Path_Traversal__wchar_t_connect_socket_ifstream_14.cpp"
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

@globalFive = external global i32, align 4
@.str = private unnamed_addr constant [10 x i8] c"127.0.0.1\00", align 1

; Function Attrs: mustprogress noinline optnone uwtable
define dso_local void @_ZN65CWE23_Relative_Path_Traversal__wchar_t_connect_socket_ifstream_143badEv() #0 personality ptr @__gxx_personality_v0 {
  %1 = alloca ptr, align 8
  %2 = alloca [4096 x i32], align 16
  %3 = alloca i32, align 4
  %4 = alloca %struct.sockaddr_in, align 4
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %"class.std::basic_ifstream", align 8
  %9 = alloca ptr, align 8
  %10 = alloca i32, align 4
  call void @llvm.memset.p0.i64(ptr align 16 %2, i8 0, i64 16384, i1 false)
  %11 = getelementptr inbounds [4096 x i32], ptr %2, i32 0, i32 0
  store i32 47, ptr %11, align 16
  %12 = getelementptr inbounds [4096 x i32], ptr %2, i32 0, i32 1
  store i32 116, ptr %12, align 4
  %13 = getelementptr inbounds [4096 x i32], ptr %2, i32 0, i32 2
  store i32 109, ptr %13, align 8
  %14 = getelementptr inbounds [4096 x i32], ptr %2, i32 0, i32 3
  store i32 112, ptr %14, align 4
  %15 = getelementptr inbounds [4096 x i32], ptr %2, i32 0, i32 4
  store i32 47, ptr %15, align 16
  %16 = getelementptr inbounds [4096 x i32], ptr %2, i64 0, i64 0
  store ptr %16, ptr %1, align 8
  %17 = load i32, ptr @globalFive, align 4
  %18 = icmp eq i32 %17, 5
  br i1 %18, label %19, label %84

19:                                               ; preds = %0
  store i32 -1, ptr %6, align 4
  %20 = load ptr, ptr %1, align 8
  %21 = call i64 @wcslen(ptr noundef %20) #7
  store i64 %21, ptr %7, align 8
  br label %22

22:                                               ; preds = %19
  %23 = call i32 @socket(i32 noundef 2, i32 noundef 1, i32 noundef 6) #8
  store i32 %23, ptr %6, align 4
  %24 = load i32, ptr %6, align 4
  %25 = icmp eq i32 %24, -1
  br i1 %25, label %26, label %27

26:                                               ; preds = %22
  br label %77

27:                                               ; preds = %22
  call void @llvm.memset.p0.i64(ptr align 4 %4, i8 0, i64 16, i1 false)
  %28 = getelementptr inbounds nuw %struct.sockaddr_in, ptr %4, i32 0, i32 0
  store i16 2, ptr %28, align 4
  %29 = call i32 @inet_addr(ptr noundef @.str) #8
  %30 = getelementptr inbounds nuw %struct.sockaddr_in, ptr %4, i32 0, i32 2
  %31 = getelementptr inbounds nuw %struct.in_addr, ptr %30, i32 0, i32 0
  store i32 %29, ptr %31, align 4
  %32 = call zeroext i16 @htons(i16 noundef zeroext 27015) #9
  %33 = getelementptr inbounds nuw %struct.sockaddr_in, ptr %4, i32 0, i32 1
  store i16 %32, ptr %33, align 2
  %34 = load i32, ptr %6, align 4
  %35 = call i32 @connect(i32 noundef %34, ptr noundef %4, i32 noundef 16)
  %36 = icmp eq i32 %35, -1
  br i1 %36, label %37, label %38

37:                                               ; preds = %27
  br label %77

38:                                               ; preds = %27
  %39 = load i32, ptr %6, align 4
  %40 = load ptr, ptr %1, align 8
  %41 = load i64, ptr %7, align 8
  %42 = getelementptr inbounds nuw i32, ptr %40, i64 %41
  %43 = load i64, ptr %7, align 8
  %44 = sub i64 4096, %43
  %45 = sub i64 %44, 1
  %46 = mul i64 4, %45
  %47 = call i64 @recv(i32 noundef %39, ptr noundef %42, i64 noundef %46, i32 noundef 0)
  %48 = trunc i64 %47 to i32
  store i32 %48, ptr %3, align 4
  %49 = load i32, ptr %3, align 4
  %50 = icmp eq i32 %49, -1
  br i1 %50, label %54, label %51

51:                                               ; preds = %38
  %52 = load i32, ptr %3, align 4
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %51, %38
  br label %77

55:                                               ; preds = %51
  %56 = load ptr, ptr %1, align 8
  %57 = load i64, ptr %7, align 8
  %58 = load i32, ptr %3, align 4
  %59 = sext i32 %58 to i64
  %60 = udiv i64 %59, 4
  %61 = add i64 %57, %60
  %62 = getelementptr inbounds nuw i32, ptr %56, i64 %61
  store i32 0, ptr %62, align 4
  %63 = load ptr, ptr %1, align 8
  %64 = call noundef ptr @_ZSt6wcschrPww(ptr noundef %63, i32 noundef signext 13)
  store ptr %64, ptr %5, align 8
  %65 = load ptr, ptr %5, align 8
  %66 = icmp ne ptr %65, null
  br i1 %66, label %67, label %69

67:                                               ; preds = %55
  %68 = load ptr, ptr %5, align 8
  store i32 0, ptr %68, align 4
  br label %69

69:                                               ; preds = %67, %55
  %70 = load ptr, ptr %1, align 8
  %71 = call noundef ptr @_ZSt6wcschrPww(ptr noundef %70, i32 noundef signext 10)
  store ptr %71, ptr %5, align 8
  %72 = load ptr, ptr %5, align 8
  %73 = icmp ne ptr %72, null
  br i1 %73, label %74, label %76

74:                                               ; preds = %69
  %75 = load ptr, ptr %5, align 8
  store i32 0, ptr %75, align 4
  br label %76

76:                                               ; preds = %74, %69
  br label %77

77:                                               ; preds = %76, %54, %37, %26
  %78 = load i32, ptr %6, align 4
  %79 = icmp ne i32 %78, -1
  br i1 %79, label %80, label %83

80:                                               ; preds = %77
  %81 = load i32, ptr %6, align 4
  %82 = call i32 @close(i32 noundef %81)
  br label %83

83:                                               ; preds = %80, %77
  br label %84

84:                                               ; preds = %83, %0
  call void @_ZNSt14basic_ifstreamIcSt11char_traitsIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(256) %8)
  %85 = load ptr, ptr %1, align 8
  invoke void @_ZNSt14basic_ifstreamIcSt11char_traitsIcEE4openEPKcSt13_Ios_Openmode(ptr noundef nonnull align 8 dereferenceable(256) %8, ptr noundef %85, i32 noundef 8)
          to label %86 unwind label %88

86:                                               ; preds = %84
  invoke void @_ZNSt14basic_ifstreamIcSt11char_traitsIcEE5closeEv(ptr noundef nonnull align 8 dereferenceable(256) %8)
          to label %87 unwind label %88

87:                                               ; preds = %86
  call void @_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(256) %8) #8
  ret void

88:                                               ; preds = %86, %84
  %89 = landingpad { ptr, i32 }
          cleanup
  %90 = extractvalue { ptr, i32 } %89, 0
  store ptr %90, ptr %9, align 8
  %91 = extractvalue { ptr, i32 } %89, 1
  store i32 %91, ptr %10, align 4
  call void @_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(256) %8) #8
  br label %92

92:                                               ; preds = %88
  %93 = load ptr, ptr %9, align 8
  %94 = load i32, ptr %10, align 4
  %95 = insertvalue { ptr, i32 } poison, ptr %93, 0
  %96 = insertvalue { ptr, i32 } %95, i32 %94, 1
  resume { ptr, i32 } %96
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
