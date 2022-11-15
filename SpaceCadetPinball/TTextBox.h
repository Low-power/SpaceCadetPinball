#pragma once
#include "score.h"
#include "TPinballComponent.h"
#include "TTextBoxMessage.h"

class TTextBox :
	public TPinballComponent
{
public:
	int OffsetX;
	int OffsetY;
	int Width;
	int Height;
	int Timer;
	gdrv_bitmap8* BgBmp;
	score_msg_font_type* Font;
	TTextBoxMessage* CurrentMessage;
	TTextBoxMessage* PreviousMessage;

	TTextBox(TPinballTable *, int, std::ostream *);
	TTextBox(TPinballTable *, int);
	~TTextBox() override;
	int Message(MessageCode code, float value) override;
	void Clear();
	void Display(const char* text, float time);
	void DrawImGui();
	void SetLogStream(std::ostream *);

private:
	struct LayoutResult
	{
		char *Start, *End;
		int Width;
	};

	std::ostream *log_to;

	static void TimerExpired(int timerId, void* caller);

	void Draw();
	LayoutResult LayoutTextLine(char* textStart) const;
};
