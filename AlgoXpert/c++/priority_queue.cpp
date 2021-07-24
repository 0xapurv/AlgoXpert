#include <iostream>
#include <string>
#include <queue>
using namespace std;
class CompareClass {
    public:
        bool operator() (int a, int b) {
            if (a > b)
                return true;
            return false;
        }
};

void print_pqueue (priority_queue<int, vector<int>, CompareClass> pq) {

    priority_queue<int, vector<int>, CompareClass> copy_q = pq;
    cout << "Priority Queue : ";
    while (!copy_q.empty()) {
        cout << copy_q.top() << " ";
        copy_q.pop();
    }
    cout << "\n";
}

int main() {

    priority_queue<int, vector<int>, CompareClass> queue_int;

    cout << "Is the Queue empty now? : " << (queue_int.empty() ? "Yes" : "No") << endl;

    cout << "Adding some elements...\n";
    queue_int.push(100);
    queue_int.push(200);
    queue_int.push(400);
    queue_int.push(50);

    cout << "Number of elements : " << queue_int.size() << endl;
    cout << "Top element : " << queue_int.top() << endl << endl;

    print_pqueue(queue_int);

    cout << "Popping element from the top...\n\n";
    queue_int.pop();
    print_pqueue(queue_int);
    
    return 0;
}
