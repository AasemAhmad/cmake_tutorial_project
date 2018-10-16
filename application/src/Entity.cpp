#include"..\inc\Entity.hpp"
#include<iostream>

Entity::Entity(int x, int y) {
	this->x = x;
	this->y = y;
	std::cout << "entity elements are set correctly\n";
}
void Entity::print() {
	std::cout << x << " , " << y << std::endl;
}
