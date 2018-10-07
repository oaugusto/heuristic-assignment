//
// Created by WorkSpace on 5/1/2018.
//

#include "../include/solution.h"

void make_graph_undirected(Graph *graph) {
    v_T n_v = graph->get_num_v();

    for (v_T i = 0; i < n_v; i++) {
        for (auto it = graph->begin(i); it != graph->end(i); it++) {
            auto s = (*it).get_source();
            auto d = (*it).get_dest();

            //if the edge is not in graph
            if (!graph->is_edge(d, s)) {
                graph->insert(Edge(d, s, (*it).get_weigth(), (*it).get_label()));
            }
        }
    }
}

Route nearestNeighborTSP(Graph *graph) {
    v_T n_v = graph->get_num_v();
    w_T solution = 0;
    vector<int> tour;

    vector<v_T> color(static_cast<unsigned long>(n_v), 0); //all vertex with white color

    v_T first = 0;
    v_T current = first;
    color[current] = 1;

    tour.push_back(first);

    for (v_T i = 0; i < n_v - 1; i++) {
        w_T w = 0; //smallest weight
        v_T v = 0; //node

        // get the first node not visited yet
        for (auto it = graph->begin(current); it != graph->end(current); it++) {
            if (color[it->get_dest()] != 1) {
                v = it->get_dest();
                w = it->get_weigth();
                break;
            }
        }

        //compare all nodes to find the smallest value
        for (auto it = graph->begin(current); it != graph->end(current); it++) {
            if ((color[it->get_dest()] != 1) && (it->get_weigth() < w)) {
                v = it->get_dest();
                w = it->get_weigth();
            }
        }

        solution += w;
        current = v;
        color[current] = 1;
        tour.push_back(current);
    }

    auto e = graph->get_edge(current, first);
    solution += e.get_weigth();

    for (int k = 1; k < n_v; k++) {
        w_T sl = 0;
        vector<int> t;

        vector<v_T> color(static_cast<unsigned long>(n_v), 0); //all vertex with white color

        v_T first = k;
        v_T current = first;
        color[current] = 1;
        t.push_back(first);

        for (v_T i = 0; i < n_v - 1; i++) {
            w_T w = 0; //smallest weight
            v_T v = 0; //node

            // get the first node not visited yet
            for (auto it = graph->begin(current); it != graph->end(current); it++) {
                if (color[it->get_dest()] != 1) {
                    v = it->get_dest();
                    w = it->get_weigth();
                    break;
                }
            }

            //compare all nodes to find the smallest value
            for (auto it = graph->begin(current); it != graph->end(current); it++) {
                if ((color[it->get_dest()] != 1) && (it->get_weigth() < w)) {
                    v = it->get_dest();
                    w = it->get_weigth();
                }
            }

            sl += w;
            current = v;
            color[current] = 1;
            t.push_back(current);
        }

        auto e = graph->get_edge(current, first);
        sl += e.get_weigth();

        if (sl < solution) {
            solution = sl;
            tour.clear();
            tour = t;
        }
    }

    return Route(graph, tour);
}

vector<Route> getNeighbors_2opt(Graph* graph, Route& solution) {
    vector<Route> neighbors;

    for (int a = 0; a < graph->get_num_v()-3; a++) {
        int b = a + 1;
        double ab = solution.getWeight(a, b);
        for (int c = b + 1; c < graph->get_num_v()-1; c++) {
            int d = c + 1;
            double cd = solution.getWeight(c, d);
            double ac = solution.getWeight(a, c);
            double bd = solution.getWeight(b, d);

            if (ab + cd > ac + bd) {
                int start = b;
                int end = c;
                Route newRoute(solution);

                while (start < end) {
                    newRoute.swap(start++, end--);
                }
                newRoute.setCost(solution.getCost() - ab - cd + ac + bd);
                neighbors.push_back(newRoute);
            }

        }
    }

    return neighbors;
}

Route variableNeighborhoodSearchTSP(Graph *graph, Route x, int kmax) {

    vector<Neighborhood> neighborhoods(kmax);

    int k = 0;
    vector<Route> neighborhood;

    do {

        // Find best neighbor
        if (k == 0) {
            neighborhood = getNeighbors_2opt(graph, x);
            neighborhoods[k].addNeighbors(neighborhood);
        } else {
            for (int i=0; i<neighborhoods[k-1].getSize(); i++) {
                Route cur = neighborhoods[k-1].getNeigbor(i);
                neighborhood = getNeighbors_2opt(graph, cur);
                neighborhoods[k].addNeighbors(neighborhood);
            }
        }


        if (neighborhood.empty()) {
            k++;
            continue;
        }

        Route x1 = neighborhood[0];

        for (int i=1; i<neighborhood.size(); i++)
            if (neighborhood[i].getCost() < x1.getCost())
                x1 = neighborhood[i];

        // Change neighborhood
        if (x1.getCost() < x.getCost()) {
            x = x1;
            k = 0;
        } else k++;

    } while (k < kmax);

    return x;

}