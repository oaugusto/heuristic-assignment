//
// Created by Otavio Augusto de O. Souza on 4/14/2018.
// modified: 08/27/2018
//

#include "../include/Graph.h"


bool Graph::is_edge(v_T source, v_T destination) const {
    auto it = find(edges[source].cbegin(), edges[source].cend(), Edge(source, destination));

    return it != edges[source].end();
}

Edge Graph::get_edge(v_T source, v_T destination) const {
    auto it = find(edges[source].cbegin(), edges[source].cend(), Edge(source, destination));

    if (it != edges[source].end()) {
        return *it;
    } else {
        Edge(source, destination, numeric_limits<w_T>::max());
    }
}

void Graph::insert(const Edge& edge) {
    edges[edge.get_source()].push_back(edge);
}

list<Edge>::iterator Graph::begin(v_T source) {
    return edges[source].begin();
}


list<Edge>::iterator Graph::end(v_T source) {
    return edges[source].end();
}


void Graph::remove_edge(v_T source, v_T destination) {
    auto it = find(edges[source].begin(), edges[source].end(), Edge(source, destination));

    if (it !=  edges[source].end()) {
        edges[source].remove(*it);
    }
}

void Graph::remove_edge(const Edge& edge) {
    auto it = find(edges[edge.get_source()].begin(),
                                              edges[edge.get_source()].end(),
                                              Edge(edge.get_source(), edge.get_dest()));

    if (it !=  edges[edge.get_source()].end()) {
        edges[edge.get_source()].remove(*it);
    }
}

void Graph::remove_edges(v_T source) {
    edges[source].clear();
}

void Graph::print_graph() {
    for (int i = 0; i < num_v; i++) {
        for (auto it = edges[i].begin(); it != edges[i].end(); it++) {
            cout << (*it).to_string() << endl;
        }
    }
}

Graph* Graph::creatGraph(std::istream &in) {

    struct city {
        w_T x;
        w_T y;
    };

    v_T nv; //number of vertex
    v_T label;
    w_T x, y; //coordinates

    string dummy; //not interesting
    string type;

    string line;
    //ignore lines from header
    getline(in, line);
    getline(in, line);
    getline(in, line);

    //catch the number of vertices
    getline(in, line);
    istringstream head(line);
    head >> dummy;
    head >> nv;

    auto cities = new struct city[nv];

    //ignore lines from header
    getline(in, line);
    istringstream edge_type(line);
    edge_type >> dummy;
    edge_type >> type;
    getline(in, line);

    for (v_T i = 1; i <= nv; i++) {
        getline(in , line);
        istringstream parse(line);
        parse >> label;
        parse >> x;
        parse >> y;
        cities[i-1].x = x;
        cities[i-1].y = y;
    }

    //construct new graph
    auto graph = new Graph(nv);

    int z = 1; //edge label

    if (!type.compare("EUC_2D")) {
        cout << "EUC_2D" << endl;
        for (v_T i = 0; i < nv - 1; i++) {
            for (v_T j = i + 1; j < nv; j++) {
                w_T weight = round(sqrt(pow(cities[i].x - cities[j].x, 2) + pow(cities[i].y - cities[j].y, 2)));
                graph->insert(Edge(i, j, weight, z++));
                graph->insert(Edge(j, i, weight, z));
            }
        }
    } else {
        cout << "ATT" << endl;
        for (v_T i = 0; i < nv - 1; i++) {
            for (v_T j = i + 1; j < nv; j++) {
                w_T aux = sqrt((pow(cities[i].x - cities[j].x, 2) + pow(cities[i].y - cities[j].y, 2)) / 10);
                w_T weight = round(weight);

                if (weight < aux) {
                    weight = weight + 1;
                }

                graph->insert(Edge(i, j, weight, z++));
                graph->insert(Edge(j, i, weight, z));
            }
        }
    }

    return graph;
}