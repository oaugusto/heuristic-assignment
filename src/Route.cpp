//
// Created by oaugusto on 21/09/18.
//

#include "../include/Route.h"

double Route::getCost() const { return this->cost; }

void Route::setCost(double cost) { this->cost = cost; }

Graph* Route::getGraph() { return this->graph; }

void Route::setGraph(Graph *graph) { this->graph = graph; }

vector<int> Route::getRoute() { return route; }

void Route::setRoute(vector<int> r) {
    route.clear();
    for (auto it = r.begin(); it != r.end(); it++) {
        route.push_back(*it);
    }
}

void Route::calcCost() {
    cost = 0;
    for (int i = 0; i < route.size() - 1; i++) {
        cost += graph->get_edge(route[i], route[i+1]).get_weigth();
    }
    cost += graph->get_edge(route[route.size() - 1], route[0]).get_weigth();
}

void Route::swap(int a, int b) {
    std::swap(route[a], route[b]);
}

w_T Route::getWeight(int a, int b) const {
    return graph->get_edge(route[a], route[b]).get_weigth();
}

void Route::printRoute() {
    for (auto it = route.begin(); it != route.end(); it++) {
        cout << *it << " ";
    }
    cout << endl;
    cout << cost << endl;
}