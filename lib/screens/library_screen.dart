import 'package:flutter/material.dart';
import 'book_detail_screen.dart';
import '../models/book.dart';

class LibraryScreen extends StatefulWidget {
  @override
  _LibraryScreenState createState() => _LibraryScreenState();
}

class _LibraryScreenState extends State<LibraryScreen> {
  final List<Book> books = [
    Book(
      title: 'Complete Tales & Poems Of Edgar Allan Poe',
      author: 'Edgar Allan Poe',
      text:
          'Once upon a midnight dreary, while I pondered, weak and weary, over many a quaint and curious volume of forgotten lore—while I nodded, nearly napping, suddenly there came a tapping, as of some one gently rapping, rapping at my chamber door. Tis some visitor, I muttered, tapping at my chamber door—only this and nothing more. Ah, distinctly I remember it was in the bleak December; and each separate dying ember wrought its ghost upon the floor. Eagerly I wished the morrow;—vainly I had sought to borrow from my books surcease of sorrow—sorrow for the lost Lenore—for the rare and radiant maiden whom the angels name Lenore—nameless here for evermore. And the silken, sad, uncertain rustling of each purple curtain thrilled me—filled me with fantastic terrors never felt before; so that now, to still the beating of my heart, I stood repeating Tis some visitor entreating entrance at my chamber door—some late visitor entreating entrance at my chamber door;—this it is and nothing more. Presently my soul grew stronger; hesitating then no longer, Sir, said I, or Madam, truly your forgiveness I implore; but the fact is I was napping, and so gently you came rapping, and so faintly you came tapping, tapping at my chamber door, that I scarce was sure I heard you—here I opened wide the door;—darkness there and nothing more. Deep into that darkness peering, long I stood there wondering, fearing, doubting, dreaming dreams no mortal ever dared to dream before; but the silence was unbroken, and the stillness gave no token, and the only word there spoken was the whispered word, Lenore? This I whispered, and an echo murmured back the word, Lenore!—merely this and nothing more. Back into the chamber turning, all my soul within me burning, soon again I heard a tapping somewhat louder than before. Surely, said I, surely that is something at my window lattice; let me see, then, what thereat is, and this mystery explore—let my heart be still a moment and this mystery explore;—tis the wind and nothing more! Open here I flung the shutter, when, with many a flirt and flutter, in there stepped a stately Raven of the saintly days of yore; not the least obeisance made he; not a minute stopped or stayed he; but, with mien of lord or lady, perched above my chamber door—perched upon a bust of Pallas just above my chamber door—perched, and sat, and nothing more. Then this ebony bird beguiling my sad fancy into smiling, by the grave and stern decorum of the countenance it wore, Though thy crest be shorn and shaven, thou, I said, art sure no craven, ghastly grim and ancient Raven wandering from the Nightly shore—tell me what thy lordly name is on the Night’s Plutonian shore! Quoth the Raven Nevermore. Much I marvelled this ungainly fowl to hear discourse so plainly, though its answer little meaning—little relevancy bore; for we cannot help agreeing that no living human being ever yet was blessed with seeing bird above his chamber door—bird or beast upon the sculptured bust above his chamber door, with such name as Nevermore. But the Raven, sitting lonely on the placid bust, spoke only that one word, as if his soul in that one word he did outpour. Nothing farther then he uttered—not a feather then he fluttered—till I scarcely more than muttered Other friends have flown before—on the morrow he will leave me, as my Hopes have flown before. Then the bird said Nevermore. Startled at the stillness broken by reply so aptly spoken, Doubtless, said I, what it utters is its only stock and store caught from some unhappy master whom unmerciful Disaster followed fast and followed faster till his songs one burden bore—till the dirges of his Hope that melancholy burden bore of Never—nevermore. But the Raven still beguiling all my fancy into smiling, straight I wheeled a cushioned seat in front of bird, and bust and door; then, upon the velvet sinking, I betook myself to linking fancy unto fancy, thinking what this ominous bird of yore—what this grim, ungainly, ghastly, gaunt, and ominous bird of yore meant in croaking Nevermore. This I sat engaged in guessing, but no syllable expressing to the fowl whose fiery eyes now burned into my bosom’s core; this and more I sat divining, with my head at ease reclining on the cushion’s velvet lining that the lamp-light gloated o’er, but whose velvet-violet lining with the lamp-light gloating o’er, she shall press, ah, nevermore! Then, methought, the air grew denser, perfumed from an unseen censer swung by Seraphim whose foot-falls tinkled on the tufted floor. Wretch, I cried, thy God hath lent thee—by these angels he hath sent thee respite—respite and nepenthe from thy memories of Lenore; quaff, oh quaff this kind nepenthe and forget this lost Lenore! Quoth the Raven Nevermore. Prophet! said I, thing of evil!—prophet still, if bird or devil!—whether Tempter sent, or whether tempest tossed thee here ashore, desolate yet all undaunted, on this desert land enchanted—on this home by Horror haunted—tell me truly, I implore—is there—is there balm in Gilead?—tell me—tell me, I implore! Quoth the Raven Nevermore. Prophet! said I, thing of evil!—prophet still, if bird or devil! By that Heaven that bends above us—by that God we both adore—tell this soul with sorrow laden if, within the distant Aidenn, it shall clasp a sainted maiden whom the angels name Lenore—clasp a rare and radiant maiden whom the angels name Lenore. Quoth the Raven Nevermore. Be that word our sign of parting, bird or fiend! I shrieked, upstarting—get thee back into the tempest and the Night’s Plutonian shore! Leave no black plume as a token of that lie thy soul hath spoken! Leave my loneliness unbroken!—quit the bust above my door! Take thy beak from out my heart, and take thy form from off my door! Quoth the Raven Nevermore. And the Raven, never flitting, still is sitting, still is sitting on the pallid bust of Pallas just above my chamber door; and his eyes have all the seeming of a demon’s that is dreaming, and the lamp-light o’er him streaming throws his shadow on the floor; and my soul from out that shadow that lies floating on the floor shall be lifted—nevermore!',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple, // Purple header
        title: const Text('My Books', style: TextStyle(color: Colors.white)),
      ),
      backgroundColor: Colors.black, // Black background
      body: ListView.builder(
        itemCount: books.length,
        itemBuilder: (context, index) {
          final book = books[index];
          return ListTile(
            leading: Image.network(
              'https://m.media-amazon.com/images/I/71RCZUd2MgL._AC_UF1000,1000_QL80_.jpg',
              height: 50, // Adjust the height as needed
              fit: BoxFit.cover,
            ),
            title: Text(book.title, style: TextStyle(color: Colors.white)),
            subtitle: Text(book.author, style: TextStyle(color: Colors.white)),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => BookDetailScreen(book: book),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
