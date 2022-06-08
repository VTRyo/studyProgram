package add

import "testing"

func add(a, b int) int {
	return a + b
}

func TestAdd(t *testing.T) {
	type args struct {
		a int
		b int
	}

	tests := []struct {
		name string
		args args
		want int
	}{
		{
			name: "fatal",
			args: args{a: 1, b: 2},
			want: 30,
		},
		{
			name: "normal",
			args: args{a: 1, b: 2},
			want: 3,
		},
	}
	for _, tt := range tests {
		t.Run(tt.name, func(t *testing.T) {
			t.Cleanup(func() {
				t.Log("cleanup")
			})

			defer t.Log("defer")

			if got := add(tt.args.a, tt.args.b); got != tt.want {
				t.Fatalf("add() = %v, got %v", got, tt.want)
			}

			t.Log("no call")
		})
	}
}
