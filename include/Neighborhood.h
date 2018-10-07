//
// Created by oaugusto on 21/09/18.
//

#ifndef HEURISTIC_ASSIGNMENT_NEIGHBORHOOD_H
#define HEURISTIC_ASSIGNMENT_NEIGHBORHOOD_H

#include "Route.h"
#include <vector>

using std::vector;

class Neighborhood {

public:
    Neighborhood() {}

    Neighborhood(const vector<Route>& list) { neighbors = list; }

    ~Neighborhood() { }

    void addNeighbor(Route& r);

    void addNeighbors(const vector<Route>& list);

    void clear();

    Route getNeigbor(int i) const;

    unsigned int getSize() const;

    bool isEmpty() const;

private:
    vector<Route> neighbors;
};


#endif //HEURISTIC_ASSIGNMENT_NEIGHBORHOOD_H
