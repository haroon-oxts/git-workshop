// Rule of 5 and Move constructor example
// We will use char* here on purpose (instead of say string)

// Also, this example DRYs the code as much as possible. Can you spot where?

include "X.cpp"

X retByVal() {
        return X("Hello World");
}

int main() {
        X x4(retByVal());
        return 0;
}