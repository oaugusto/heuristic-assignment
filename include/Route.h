//
// Created by oaugusto on 21/09/18.
//

#ifndef HEURISTIC_ASSIGNMENT_ROUTE_H
#define HEURISTIC_ASSIGNMENT_ROUTE_H

#include "Graph.h"
#include <algorithm>    // std::shuffle
#include <random>       // std::default_random_engine
#include <chrono>       // std::chrono::system_clock

class Route {
public:

    Route() {}

    Route(Graph* g) {
        graph = g;
        route.clear();
        for (int i = 0; i < graph->get_num_v(); i++) {
            route.push_back(i);
        }

        //random initial route
        unsigned seed = std::chrono::system_clock::now().time_since_epoch().count();
        shuffle (route.begin(), route.end(), std::default_random_engine(seed));

        calcCost();
    }

    Route(Graph* g, vector<int> list) {
        graph = g;
        route = list;
        calcCost();
    }

    ~Route() { }

    double getCost() const;

    void setCost(double cost);

    void setRoute(vector<int> r);

    vector<int> getRoute();

    void calcCost();

    Graph* getGraph();

    void setGraph(Graph* graph);

    void swap(int a, int b);

    w_T getWeight(int a, int b) const;

    void printRoute();

private:
    vector<int> route;
    Graph* graph = nullptr;
    double cost = 0;
};

#endif //HEURISTIC_ASSIGNMENT_ROUTE_H