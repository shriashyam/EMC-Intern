#include <fstream>
#include <cmath>
const double PI = 3.14159;

int main()

{
  // Create some data
  int points = 30;
  double *data = new double[points]();
  for(int i = 0; i < points; i++)
  {
  data[i] = sin(i/((double) points - 1)*2*PI);
  }
  // Write things out
  std::ofstream myfile ("sine_cpp.txt");
  for(int i = 0; i < points; i++)
  {
    myfile << data[i] << std::endl;
  }
  myfile.close();
  delete[] data;
  return 0;
}
