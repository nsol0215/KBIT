package main.java.ch02_conditional_loop_reference.basic.ch06.sec01;

import java.sql.SQLOutput;
import java.util.Scanner;

public class ArrayExample2 { // 예제 작성용 클래스
    public void ex1() {
        // 배열 선언 및 할당
        int[] arr = new int[4];

        // 1) stack 영역에 int[] 자료형 arr 선언
        // 2) heap영역에 int 자료향 4개를 묶음으로 다르는 int[] 할당
        // 3) heap 영역에서 생성된 int[]의 시작 주소를
        //   arr에 대입하여 참조하는 형태를 만든다

        // 배열의 길이 : 배열명.length
        System.out.println("배열의 길이 : " + arr.length);

        // 배열에 값 대입하기
        // 1. 일반 for문

        for (int i = 0; i <=4 ; i++) {

            arr[i] = 100;
            System.out.printf("arr[%d] : %d\n",i, arr[i]);
        }
    }

    public void ex2(){
        System.out.println("예제 2번");
    }

    // 2. 향상된 for문으로 값 출력하기




}
