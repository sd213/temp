#include <iostream>
using namespace std;

class Node{
	public:
		int value;
		Node* next;
		
		Node(int value){
			this->value = value;
			this->next = nullptr;
		}
};

class LinkedList{
	private:
		Node* head;
		Node* tail;
		int length;
	public:
		LinkedList(){
			head = tail = nullptr;
			length = 0;
		}
		LinkedList(int value){
			Node* newNode = new Node(value);
			head=tail=newNode;
			length = 1;
		}
		void printList(){
			Node* temp = head;
			int pos = 1;
			while(temp){
				cout << " At pos: " << pos << " the value is : "<<temp->value<<endl;
				temp=temp->next;
				pos++;
			}
		}
		void getHead(){
			cout << " value of head( "<<head<<" ) is : " << head->value << endl;
		}
		void getTail(){
			cout << " value of tail( " << tail << " ) is : " << tail->value <<endl;
		}
		void getLength(){
			cout << " Length of LinkedList : " << length << endl;
		}
		void append(int value){
			cout << " Appending Value " << value << " to the end of LinkedList" << endl;
			Node* newNode = new Node(value);
			if(head == nullptr){
				head = tail = newNode;
				length = 1;
			}
			else{
				tail->next = newNode;
				tail = newNode;
				length++;
			}
		}
		void prepend(int value){
			cout << " prepending Value " << value << " to start of LinkedList " << endl;
			Node* newNode = new Node(value);
			if(head == nullptr && tail == nullptr){
				head = tail = newNode;
				length = 1;
			}
			else{
				newNode->next = head;
				head = newNode;
				length++;
			}
		}
		void deleteLast(){
			if ( length == 0 ) {
				cout<< "Nothing here to Delete" <<endl;
				return;
			}
			Node* temp = head;
			if( length == 1){
				head = nullptr;
				tail = nullptr;
			}
			else{
				Node* pre = head;
				while(temp->next){
					pre = temp;
					temp = temp->next;
				}
				tail = pre;
				tail->next = nullptr;
			}
			delete temp;
			length --;
		}
		void deleteFirst(){
			if( head == nullptr){
				cout << " Nothing here to delete " << endl;
				return;
			}
			Node* temp = head;
			if( length == 1){
				head = nullptr;
				tail = nullptr;
			}
			else{
				head = head->next;
				temp -> next = nullptr;
			}
			delete temp;
			length --;
		}
		Node* get( int index ){
			if ( index < 0 || index >= length) return nullptr;
			else{
				Node* temp = head;
				for(int i = 0 ; i <= index ; i++){
					temp = temp->next;
				}
				return temp;
			}
		}
		bool set( int index , int value ){
			Node* temp = get(index);
			if( temp ){
				temp->value = value;
				return true;
			}
			else {
				return false;
			}
		}
	//void LinkedList(){ // error: return type specification for constructor invalid
		//cout << "problem0" << endl;
	//}


	~LinkedList(){
		cout << " Destroying LinkedList " << endl;
		Node* temp = head;
		while(head){
			head=head->next;
			delete temp;
			temp=head;
		}
	}
};

int main(){
	LinkedList* myLinkedList1 = new LinkedList(33);
	LinkedList* myLinkedList2 = new LinkedList();
	cout << " TESTING CONSTRUCTOR: " << endl;
	cout << " MyLinkedList1 : " << endl;
	myLinkedList1->getHead();
	myLinkedList1->getTail();
	myLinkedList1->getLength();
	//cout << endl << " MyLinkedList2 : " << endl;
	//myLinkedList2->getHead();
	//myLinkedList2->getTail();
	//myLinkedList2->getLength();
	cout << endl << endl << endl;
	
	cout << " TESTING PRINTLIST: " << endl;
	cout << " myLinkedList1: " << endl;
	myLinkedList1->printList();
	cout << endl << endl << endl;
	
	

	

	
	cout << " TESTING APPEND : " << endl;
	cout << " myLinkedList1: " << endl;
	cout << " 	before Appending: " << endl;
	myLinkedList1->printList();
	
	myLinkedList1->append(34);
	myLinkedList1->append(55);
	myLinkedList1->append(57);
	myLinkedList1->append(90);
	cout << "   after Appending: " << endl;
	myLinkedList1->printList();
	cout << endl << endl << endl;
	
	myLinkedList2->append(43);
	myLinkedList2->append(69);
	myLinkedList2->append(75);
	myLinkedList2->append(94);
	
	
	cout << " TESTING PREPEND : " << endl;
	cout << " myLinkedList1 : " << endl;
	cout << " 	before Prepending: " << endl;
	myLinkedList1->printList(); 	                     	
	myLinkedList1->prepend(32);
	myLinkedList1->prepend(31);
	cout << "   after Prepending: " << endl;
	myLinkedList1->printList();
	
	cout << " myLinkedList2 : " << endl;
	cout << " 	before Prepending: " << endl;
	myLinkedList2->printList(); 	                     	
	myLinkedList2->prepend(42);
	myLinkedList2->prepend(41);
	cout << "   after Prepending: " << endl;
	myLinkedList2->printList();
	cout << endl << endl << endl;
	
	cout << " TESTING DELETE_LAST: " << endl;
	cout << " myLinkedList1 : " << endl;
	cout << "   before Deleting Last : " << endl;
	myLinkedList1->printList();
	myLinkedList1->deleteLast();
	cout << " after Deleting Last: " << endl;
	myLinkedList1->printList();
	
	cout << " myLinkedList2 : " << endl;
	cout << "   before Deleting Last : " << endl;
	myLinkedList2->printList();
	myLinkedList2->deleteLast();
	cout << " after Deleting Last: " << endl;
	myLinkedList2->printList();
	
	cout << endl << endl << endl;
	
	cout << " TESTING DELETE_FIRST: " << endl;
	cout << " myLinkedList1 : " << endl;
	cout << "   before Deleting First : " << endl;
	myLinkedList1->printList();
	myLinkedList1->deleteFirst();
	cout << " after Deleting First: " << endl;
	myLinkedList1->printList();
	
	
	cout << " myLinkedList2 : " << endl;
	cout << "   before Deleting First : " << endl;
	myLinkedList2->printList();
	myLinkedList2->deleteFirst();
	cout << " after Deleting First: " << endl;
	myLinkedList2->printList();
	cout << endl << endl << endl;
	
	cout << " TESTING GET AND SET : " << endl;
	
	cout << endl << endl << endl;
	
		//cout << " TESTING DESTRUCTOR: " << endl;
	//cout << " myLinkedList1: " << endl;
	//delete myLinkedList1;
	//cout << endl << endl << endl;
}
