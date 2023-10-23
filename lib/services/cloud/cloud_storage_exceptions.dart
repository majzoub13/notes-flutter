class CloudStorageException implements Exception {
  const CloudStorageException();
}

class CouldNotCreateNoteeException extends CloudStorageException {}

class CouldNotGetAllNotesException extends CloudStorageException {}

class CouldNotUpdateNoteException extends CloudStorageException {}

class CouldNOtDeleteNoteException extends CloudStorageException {}
