>>> from graphiit import Graph
import pyphi
import numpy as np
>>> graph_config = [
... ('A','OR','B','C','D','E','F','G','H','I','J','K'),
    ('B','XNOR','A','C','D','E','F','G','H','I','J','K'),
    ('C','NOR','A','B','D','E','F','G','H','I','J','K'),
    ('D','AND','A','B','C','E','F','G','H','I','J','K'),
    ('E','NOR','A','B','C','D','F','G','H','I','J','K'),
    ('F','AND','A','B','C','D','E','G','H','I','J','K'),
    ('G','XNOR','A','B','C','D','E','F','H','I','J','K'),
    ('H','OR','A','B','C','D','E','F','G','I','J','K'),
    ('I','XOR','A','B','C','D','E','F','G','H','J','K'),
    ('J','OR','A','B','C','D','E','F','G','H','I','K'),
    ('K','AND','A','B','C','D','E','F','G','H','I','K')]
    >>> graph = Graph(graph_config)
    network = graph.pyphi_network()
    >>> state = (1,0,0,0,0,0,0,1,1,0,0)
    >>> subsystem = pyphi.Subsystem(network, state)
    >>> pyphi.compute.phi(subsystem)
