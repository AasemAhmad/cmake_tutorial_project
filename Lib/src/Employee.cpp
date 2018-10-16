#include"..\inc\Employee.hpp"
Employee::Employee(string name, int id) {
	this->name = name;
	this->id = id;
	std::cout << "constructor is being called \n";
}
void Employee::print() {
	std::cout << "name = " << name << "\n id =" << id << std::endl;
}
