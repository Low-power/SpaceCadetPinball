CXXFLAGS += -Wall -Os -fno-common $(CPPFLAGS)

OBJECTS := \
	SpaceCadetPinball/control.o \
	SpaceCadetPinball/EmbeddedData.o \
	SpaceCadetPinball/font_selection.o \
	SpaceCadetPinball/fullscrn.o \
	SpaceCadetPinball/gdrv.o \
	SpaceCadetPinball/GroupData.o \
	SpaceCadetPinball/high_score.o \
	SpaceCadetPinball/loader.o \
	SpaceCadetPinball/maths.o \
	SpaceCadetPinball/midi.o \
	SpaceCadetPinball/nudge.o \
	SpaceCadetPinball/options.o \
	SpaceCadetPinball/partman.o \
	SpaceCadetPinball/pb.o \
	SpaceCadetPinball/proj.o \
	SpaceCadetPinball/render.o \
	SpaceCadetPinball/score.o \
	SpaceCadetPinball/Sound.o \
	SpaceCadetPinball/SpaceCadetPinball.o \
	SpaceCadetPinball/TBall.o \
	SpaceCadetPinball/TBlocker.o \
	SpaceCadetPinball/TBumper.o \
	SpaceCadetPinball/TCircle.o \
	SpaceCadetPinball/TCollisionComponent.o \
	SpaceCadetPinball/TComponentGroup.o \
	SpaceCadetPinball/TDemo.o \
	SpaceCadetPinball/TDrain.o \
	SpaceCadetPinball/TEdgeManager.o \
	SpaceCadetPinball/TEdgeSegment.o \
	SpaceCadetPinball/TFlagSpinner.o \
	SpaceCadetPinball/TFlipper.o \
	SpaceCadetPinball/TFlipperEdge.o \
	SpaceCadetPinball/TGate.o \
	SpaceCadetPinball/THole.o \
	SpaceCadetPinball/timer.o \
	SpaceCadetPinball/TKickback.o \
	SpaceCadetPinball/TKickout.o \
	SpaceCadetPinball/TLight.o \
	SpaceCadetPinball/TLightBargraph.o \
	SpaceCadetPinball/TLightGroup.o \
	SpaceCadetPinball/TLightRollover.o \
	SpaceCadetPinball/TLine.o \
	SpaceCadetPinball/TOneway.o \
	SpaceCadetPinball/TPinballComponent.o \
	SpaceCadetPinball/TPinballTable.o \
	SpaceCadetPinball/TPlunger.o \
	SpaceCadetPinball/TPopupTarget.o \
	SpaceCadetPinball/TRamp.o \
	SpaceCadetPinball/translations.o \
	SpaceCadetPinball/TRollover.o \
	SpaceCadetPinball/TSink.o \
	SpaceCadetPinball/TSoloTarget.o \
	SpaceCadetPinball/TSound.o \
	SpaceCadetPinball/TTableLayer.o \
	SpaceCadetPinball/TTextBox.o \
	SpaceCadetPinball/TTextBoxMessage.o \
	SpaceCadetPinball/TTimer.o \
	SpaceCadetPinball/TTripwire.o \
	SpaceCadetPinball/TWall.o \
	SpaceCadetPinball/winmain.o \
	SpaceCadetPinball/zdrv.o \
	SpaceCadetPinball/imgui.o \
	SpaceCadetPinball/imgui_sdl.o \
	SpaceCadetPinball/imgui_draw.o \
	SpaceCadetPinball/imgui_widgets.o \
	SpaceCadetPinball/imgui_tables.o \
	SpaceCadetPinball/imgui_demo.o \
	SpaceCadetPinball/imgui_impl_sdl.o \
	SpaceCadetPinball/DebugOverlay.o

bin/SpaceCadetPinball:	$(OBJECTS)
	$(CXX) $(OBJECTS) -o $@ -l SDL2 -l SDL2_mixer

clean:
	rm -f $(OBJECTS) bin/SpaceCadetPinball
