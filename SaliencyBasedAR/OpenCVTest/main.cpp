#include <iostream>
#include <stdio.h>
#include <stdlib.h>
#include<fstream>
#include <vector>

#ifdef __APPLE__ // Not really for apple, just for Brandon's specific build...
#include <opencv2/highgui/highgui.hpp>
#include <opencv2/imgproc/imgproc.hpp>
#else
#include "opencv2/highgui/highgui.hpp"
#include "opencv2/imgproc/imgproc.hpp"
#endif

using namespace cv;
using namespace std;

struct ItemLocationStruct
{
	string Lab;
	int Lef;
	int Top;
	int Rig;
	int Bot;
};

typedef ItemLocationStruct ItemLocation;

void readFile(string filePath, vector<ItemLocation> itemLocation, ItemLocation item, Mat imgs)
{
	ifstream readFileStream;
	readFileStream.open(filePath);
	if (!readFileStream)
	{
		cout << "While opening a file an error is encountered" << endl;
	}
	else
	{
		cout << "File is successfully opened" << endl;
		while (!readFileStream.eof())
		{
			string Lab, Lef, Top, Rig, Bot;
			Scalar intensity = 0;
			int t = 0;
			double aver_intensity = 0.0;
			//ItemLocation item;
			readFileStream >> Lab >> Lef >> Top >> Rig >> Bot;
			if (!(Lab.empty() && Lef.empty() && Top.empty() && Rig.empty() && Bot.empty()))
			{
				item.Lab = Lab.substr(4);
				item.Lef = atoi(Lef.substr(4).c_str());
				item.Top = atoi(Top.substr(4).c_str());
				item.Rig = atoi(Rig.substr(4).c_str());
				item.Bot = atoi(Bot.substr(4).c_str());

				for (int j = item.Lef; j<item.Rig; j++)
				{
					for (int i = item.Top; i<item.Bot; i++)
					{
						//std::cout << "Matrix of image loaded is: " << img.at<uchar>(i, j);
						intensity.val[0] = intensity.val[0] + imgs.at<uchar>(Point(j, i));
						t++;
					}
				}
				aver_intensity = intensity.val[0] / t;
				cout << "Debug: ItemLocation Lab: " << item.Lab << ", Lef: " << item.Lef << ", Top: " << item.Top << ", Rig: " << item.Rig << ", Bot: " << item.Bot << ",aver_intensity:" << aver_intensity << endl;
				itemLocation.push_back(item);
			}
		}
	}
}


/// Global variables

Mat src, src_gray;
Mat dst, detected_edges;

int edgeThresh = 1;
int lowThreshold;
int const max_lowThreshold = 100;
int inputRatio = 3;
int kernel_size = 3;
char* window_name = "Edge Map";

/**
* @function CannyThreshold
* @brief Trackbar callback - Canny thresholds input with a ratio 1:3
*/
void CannyThreshold(int, void*)
{
	/// Reduce noise with a kernel 3x3
	blur(src_gray, detected_edges, Size(3, 3));

	/// Canny detector
	Canny(detected_edges, detected_edges, lowThreshold, lowThreshold*inputRatio, kernel_size);

	/// Using Canny's output as a mask, we display our result
	dst = Scalar::all(0);

	src.copyTo(dst, detected_edges);
	imshow(window_name, dst);
}


void mouseEvent(int event, int x, int y, int flags, void* param)
{
	IplImage* pic = (IplImage*) param;
	if (event == CV_EVENT_LBUTTONDOWN)
	{
		cout << "the point is:" << x << "," << y << endl;
	}
}

//A class for draw label fram
class DrawLabel
{
private:
	double width;
	double height;
	int r, g, b;//color for rect and line


public:
	DrawLabel(double w, double h, int ib, int ig, int ir);//control the size, color of the label, the size of the rect is determined by the size of words;
	void rect(Mat copy, Point textOrg, int baseline);
	void li(Mat copy, Point textOrg, int baseline);

};

int main(int argc, char** argv){
	string text = "OpenCVtest";
   /* if (argc != 2) {
        printf("Error. Expect exactly 1 argument");
        exit(-1);
    }
    //string file = argv[1];
    string item_name = argv[1];
    string file = item_name + ".jpg";
    string salmap_file = item_name + "_msss.jpg";
    string predictions_file = item_name + ".predictions";
	*/

	//string file = "D:\\fig12.4.jpg";//Test image file
	//string file = "C:\\image1.png";//Test image file
	string file = "D:\\test2.jpg";
	string files = "D:\\test2_msss.jpg.jpg";
	int fontFace = FONT_HERSHEY_SIMPLEX;
	double fontScale;//word size
	double alpha;//control opaque things
	double thickness;//boldness
	double a;//a parameter to control whether hide or show the labels

	//Mat img(600, 800, CV_8UC3, Scalar::all(0));
	Mat img = imread(file);
	Mat imgs = imread(files, 0);//read saliency map in grayscale

	string filePath = "D:\\test2.txt";
	vector<ItemLocation> itemLocation;
	ItemLocation item;
	readFile(filePath, itemLocation, item, imgs);

	Mat copy;
	img.copyTo(copy);
	src = imread(file);


 

	cin >> a;
	if (a > 1)//final we could make a case function...based on different value the ranking retures
	{
		thickness = 2.5;
		fontScale = 0.5;
		alpha = 0.7;
		int baseline = 0;

		Size textSize = getTextSize(text, fontFace,
			fontScale, thickness, &baseline);
		baseline += thickness;

		DrawLabel label1(textSize.width, -textSize.height, 255, 0, 0);

		// center the text,on the leftdown corner of rect of label
		Point textOrg((img.cols - textSize.width) / 2,
			(img.rows + textSize.height) / 2);
		label1.rect(copy, Point(100, 100), baseline);
		label1.li(copy, Point(200, 200), baseline);
		addWeighted(copy, alpha, img, 1 - alpha, 0, img);

		// then put the text itself
		putText(img, text, Point(100, 100), fontFace, fontScale,
			Scalar(255, 255, 255), thickness, 8);
	}

	//Read image from file
	IplImage *pic = cvLoadImage("file",1);
	namedWindow("res");

	//set the callback function for any mouse event
	cvSetMouseCallback("res",mouseEvent,&pic);
	// from main edgemapping
	if (!src.data)
	{
		return -1;
	}

	/// Create a matrix of the same type and size as src (for dst)
	dst.create(src.size(), src.type());

	/// Convert the image to grayscale
	cvtColor(src, src_gray, CV_BGR2GRAY);

	/// Create a window
	namedWindow(window_name, CV_WINDOW_AUTOSIZE);
	namedWindow("saliency map", CV_WINDOW_AUTOSIZE);
	/// Create a Trackbar for user to enter threshold
	createTrackbar("Min Threshold:", window_name, &lowThreshold, max_lowThreshold, CannyThreshold);

	/// Show the image
	CannyThreshold(0, 0);

	//show the image
	imshow("res", img);
	imshow("saliency map", imgs);
	waitKey();

	return 0;
}

DrawLabel::DrawLabel(double w, double h, int ib, int ig, int ir)
{

	width = w;
	height = h;
	b = ib;
	g = ig;
	r = ir;
}

void DrawLabel::rect(Mat copy, Point textOrg, int baseline)
{
	rectangle(copy, textOrg + Point(0, baseline),
		textOrg + Point(width, height),
		Scalar(b, g, r), -1, 1);
}
//height=textSize.height+baseline
//width=textSize.width
//line(copy, Point(0, 0), textOrg + Point(0, baseline), Scalar(1, 0, 0), 2, 8);
void DrawLabel::li(Mat copy, Point textOrg, int baseline)
{
	line(copy, Point(0, 0), textOrg + Point(0, baseline), Scalar(b, g, r), 2, 8);
}
