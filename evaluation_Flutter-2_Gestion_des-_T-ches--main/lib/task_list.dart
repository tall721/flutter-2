import 'package:flutter/material.dart';
import 'task_form.dart';
import 'task_details.dart';

class TaskList extends StatefulWidget {
  const TaskList({super.key});

  @override
  State<TaskList> createState() => _TaskListState();
}

class _TaskListState extends State<TaskList> {

  final List<Map<String, String>> listesTaches = [
    {
      "Titre": "Tâche 1",
      "description": "Terminer le projet Flutter",
      "debut": "2024-12-04",
      "fin": "2024-12-04",
    },
    {
      "Titre": "Tâche 2",
      "description": "Préparer la présentation",
      "debut": "2022-15-02",
      "fin": "2022-02-15",
    },
    {
      "Titre": "Tâche 3",
      "description": "Réunion avec le client",
      "debut": "2022-02-16",
      "fin": "2022-02-20",
    },
    {
      "Titre": "Tâche 4",
      "description": "Vérifier les emails",
      "debut": "2023-02-21",
      "fin": "2023-02-25",
    },
    {
      "Titre": "Tâche 5",
      "description": "Relecture du rapport",
      "debut": "2022-02-26",
      "fin": "2022-03-05",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: const Text(
          'Liste des Tâches',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 24.0,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
          itemCount: listesTaches.length,
          itemBuilder: (context, index) {
            var task = listesTaches[index];
            return Card(
              elevation: 5.0,
              margin: const EdgeInsets.only(bottom: 10.0),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12.0),
              ),
              child: ListTile(
                contentPadding: const EdgeInsets.all(16.0),
                leading: const Icon(
                  Icons.task,
                  color: Colors.blueAccent,
                  size: 40.0,
                ),
                title: Text(
                  task["Titre"] ?? "N/A",
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18.0,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                subtitle: Text(
                  task["description"] ?? "N/A",
                  style: const TextStyle(
                    fontSize: 14.0,
                    color: Colors.grey,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => TaskDetails(taskData: task),
                    ),
                  );
                },
              ),
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Naviguer vers le formulaire de tâche pour en ajouter une nouvelle
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const TaskForm()),
          );
        },
        backgroundColor: Colors.blueAccent,
        elevation: 8.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12.0),
        ),
        child: const Icon(
          Icons.add,
          size: 36.0,
          color: Colors.white,
        ),
      ),
    );
  }
}
