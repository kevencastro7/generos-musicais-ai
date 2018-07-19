# generos-musicais-ai

This ai is distinguishing 2 types of musical genres
Using matlab and orange3(python)

Songs 1-5 = Metal
Songs 6-A = Rock

--------//-----------//-----------//------------//

First Step - Pre-processing

The pre-processing is responsable for cutting long
songs using matlab, in this case, there are none.

--------//-----------//-----------//------------//

Second Step - Fourier Fast Transform - fft

We use matlab for doing fft. The song is cut in 
parts of 3 seconds each. Then, we analyze the
frequencies of each part. We save the value and
the label of the music into a csv file. 
0 -> Metal. 1 -> Rock.

--------//-----------//-----------//------------//

Third Step - Supervised Learning

Using orange, we read the csv file, which contains
the frequencies and the labels. We choose a model.
We are comparing Neural Network and Support Vector 
Machine - SVM.

--------//-----------//-----------//------------//

Forth Step - Testing and Evaluating

For evaluating we use cross validation, which
consists in divide the data in 10 folds. Then,
a model is created using 9 of these folds and
the remaining is used for testing, and this
process is reapetead for each fold.

Evaluation Results:

SVM -> 95.2% of precision
Neural Network -> 95.6% of precision

Confusion Matrix:

SVM:

                        Predicted
                          0   1
                
          Actual    0|  |310| 9 |
                    1|  |17 |208|
          
Neural Network:

                        Predicted
                          0   1
                
          Actual    0|  |306|13 |
                    1|  |11 |214|
