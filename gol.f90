program gol
  integer answer, adder !variable declaration

  answer = adder(1, 2)  !function call
  print *, answer

  call test_adder       !subroutine call
  call create_grid
end program gol

function adder(a, b) result(c)
  integer a, b, c
  c = a + b
  return
end

subroutine test_adder
  integer adder
  if (adder(1,2).eq.3) then
    print *, 'test_adder ok'
  else
    print *, 'test_adder failed'
  endif
end

subroutine create_grid
  Integer Grid(10, 10)

  Integer I
  Integer J

  Do I = 1, 10

    Do J = 1, 10

      If (I .Eq. 5.0) Then
        Grid(I,J) = 1
      Else
        Grid(I,J) = 0
      End If
    End Do
  End Do
  Write (*,*) Grid

  Do I = 1,10
    Do J = 1,10
      If (Grid(I, J).Eq. 1.0) Then
        If (Grid((I - 1), J) + (Grid((I - 1), (J + 1)) + (Grid((I - 1), (J - 1)) + (Grid((I + 1), (J - 1)) + (Grid((I + 1), J) + (Grid((I + 1), (J + 1)) + (Grid(I, (J - 1)) + (Grid(I, (J + 1))).LE. 1.0 Then
          Grid(I, J) = 0
          print *, Grid(I,J)
        End If
      End If
    End Do
  End Do
end
