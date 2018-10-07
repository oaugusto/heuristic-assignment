//
// Created by oaugusto on 21/09/18.
//

#include "../include/Neighborhood.h"


void Neighborhood::addNeighbor(Route& r) {
    neighbors.push_back(r);
}

void Neighborhood::addNeighbors(const vector<Route>& list) {
    neighbors = list;
}

void Neighborhood::clear() { neighbors.clear(); }

Route Neighborhood::getNeigbor(int i) const { return neighbors[i]; }

unsigned int Neighborhood::getSize() const { return neighbors.size(); }

bool Neighborhood::isEmpty() const { return neighbors.empty(); }
