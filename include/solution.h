//
// Created by WorkSpace on 5/1/2018.
//

#ifndef SOLUTION_H
#define SOLUTION_H

#include "Graph.h"
#include "Types.h"
#include "Route.h"
#include "Neighborhood.h"
#include <vector>
#include <queue>
#include <algorithm>
#include <functional>
#include <cstdlib>

using std::queue;
using std::priority_queue;
using std::greater;
using std::pair;
using std::rand;

struct node {
    v_T id;
    w_T distance;

    node(v_T id, w_T distance) : id(id), distance(distance) {}

    bool operator>(const struct node n) const {
        return n.distance > distance;
    }
};

/**
 *
 * @param graph
 * @return
 */
Route nearestNeighborTSP(Graph* graph);


vector<Route> getNeighbors_2opt(Graph* graph, Route& solution);

/**
 *
 * @param graph
 * @return
 */
Route variableNeighborhoodSearchTSP(Graph *graph, Route x, int kmax);



Route tabuSearchTSP(Graph* graph, Route x);


Route greedyRandomizedAdaptativeSearchTSP(Graph* graph);


#endif //SOLUTION_H
