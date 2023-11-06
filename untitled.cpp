#include <iostream>

using namespace std;

class Node {
    public:
        int value;
        Node* next;
        Node(int value) {
            this->value = value;
            next = nullptr;
        }
};

class LinkedList {
    private:
        Node* head;
        Node* tail;
        
    public:
        LinkedList(int value) {
            Node* newNode = new Node(value);
            head = newNode;
            tail = newNode;
        }

        ~LinkedList() {
            Node* temp = head;
            while (head) {
                head = head->next;
                delete temp;
                temp = head;
            }
        }

        void printList() {
            Node* temp = head;
            if (temp == nullptr) {
                cout << "empty";
            } else {
                while (temp != nullptr) {
                    cout << temp->value;
                    temp = temp->next;
                    if (temp != nullptr) {
                        cout << " -> ";
                    }
                }
            }
            cout << endl;
        }

        Node* getHead() {
            return head;
        }

        Node* getTail() {
            return tail; 
        }
        
        void makeEmpty() {
            Node* temp = head;
            while (head) {
                head = head->next;
                delete temp;
                temp = head;
            }
            tail = nullptr;
        }

        void append(int value) {
            Node* newNode = new Node(value);
            if (head == nullptr) {
                head = newNode;
                tail = newNode;
            } else {
                tail->next = newNode;
                tail = newNode;
            }
        }

        //   +======================================================+
        //   |                 WRITE YOUR CODE HERE                 |
        //   | Description:                                         |
        //   | - Find the middle node of the linked list            |
        //   | - Return type: Node*                                 |
        //   |                                                      |
        //   | Tips:                                                |
        //   | - Use two pointers: 'slow' and 'fast'                |
        //   | - 'slow' moves one step, 'fast' moves two            |
        //   | - When 'fast' reaches the end, 'slow' is at middle   |
        //   | - Return 'slow' as the middle node                   |
        //   +======================================================+
        Node* findMiddleNode(){
            Node* slow = head;
            Node* fast = head;
            while(fast!=tail && fast!=nullptr){
                fast=fast->next;
                if(fast->next){
                    fast = fast->next;
                    slow = slow->next;
                }
                else{
                    break;
                }
            }
            return slow;
        }
        bool hasLoop(){
            Node* slow = head;
            Node* fast = head;
            int loop = 0;
            while(fast!=tail && fast->next !=nullptr){
                if(fast->value == slow->value||fast->next->value == slow->value){
                    loop = 1;
                }
                fast = fast->next->next;
                slow = slow->next;
                
            }
            if(loop == 1) return true;
            else{
            return false;
            }
                
            } 
        Node* findKthFromEnd(int k){
            Node* slow = head;
            Node* fast = head;
			int count;
			//while( fast != nullptr && fast->next !=nullptr){
				
			//}
			//int brea_k = 0;
			//for ( int i = 0 ; i<k;i++){
				//if(fast != nullptr && fast-> next != nullptr){
					//brea_k=1;
				//}
				//fast=fast->next;
			//}
			//if(brea_k == 1) return nullptr;
			//else return slow;
			
			while( fast != nullptr && fast-> next != nullptr){
				
				count++;
			}
			if(k>count) return nullptr;
			else return slow;
        }
};


//int main(){
	//LinkedList* myLinkedList = new LinkedList(43);
	//myLinkedList->append(44);
	//myLinkedList->append(45);
	//myLinkedList->append(46);
	//myLinkedList->append(47);
	//myLinkedList->append(48);
	//myLinkedList->append(49);
	//myLinkedList->append(50);
	//myLinkedList->append(51);
	//myLinkedList->append(52);
	//myLinkedList->append(53);
	//myLinkedList->append(54);
	//myLinkedList->append(54);
	//myLinkedList->append(54);
	
	
	
	
	//cout << " printing LinkedList : " << endl;
	//myLinkedList->printList();
	
	//cout << " the middle node value is : " << myLinkedList->findMiddleNode()->value << endl;
	
//}
