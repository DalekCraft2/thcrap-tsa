#========================================================================
#	���J�������X�g�[���[
#	�X�e�[�W�P�@VS�얲
#	�ꏊ�F�_��
#	�X�e�[�W�^�C�g��
#	   �u������߂�͏o���Ȃ��v
#
#========================================================================
:init
,Function,"::StopBGM(1500);"
,Thread,"::story.NextStage();"
,End

,SetDefaultBalloon,0,#���b�Z�[�W�ɕ��o���w������Ȃ��ꍇ�̃f�t�H���g���o����ݒ�

#�t�F�C�X�摜�Q�Ƃ̒�`
,LoadImageDef,"data/event/pic/marisa.csv"
,LoadImageDef,"data/event/pic/reimu.csv"

#�t�F�C�X�摜
,DefineObject,marisa,-360,0,false
,DefineObject,reimu,-360,0,true

,Return
# =========================================================

# �{��
# -------------------------------------------------------

# ********************************************
# ********************************************

:main_1

,GoSub,init				,# ���������[�`���Ăяo��

#�J�n�J�������o
,Function,GameStory_BeginCamera();
,Sleep,2,#�E�F�C�g����
,Function,"::act.fader.FadeIn(60, 0x00000000, null);"

,Function,"GameStory_PlayBGM(701);",# ��bBGM�Đ��J�n

#�������o�^
,DefineObject,marisa_label,50,360,false
,DefineObject,reimu_label,1120,360,false

#�����\��ݒ�
,ImageDef,marisa,������_��1,0,0
,ImageDef,reimu,�얲_��1,0,0


#X�t���[���̑ҋ@�����isleep�ƈقȂ�X�L�b�v����Ŕ�΂��Ȃ��j
,Function,"function main(){ for (local i=0; i < 60; i++) suspend(); }"

#�^�C�g���R�[���o��
,Function,GameStory_TitleCall();
,Function,"function main(){ for (local i=0; i < 150; i++) suspend(); }"

# 2P�L�����X�e�[�W������o��
#,Function,GameStory_2P_In_Under(),
#,Function,"function main(){ for (local i=0; i < 60; i++) suspend(); }"


,SetFocus,marisa		,#�������L�������w��
,ImageDef,marisa,������_�f1,0,0
,th145_Show,marisa,-1280	,#�얲�t�F�C�X�\���J�n
����ŁA�ǂ��Ȃ����񂾁H\,a11x2,0,0
���̃I�J���g�I�[����\n�܂݂ꂽ�e�̐l��\,a11x2,0,0
,ClearBalloon,marisa


,SetFocus,reimu		,#�������L�������w��
,ImageDef,reimu,�얲_��1,0,0
,th145_Show,reimu,-1280	,#�얲�t�F�C�X�\���J�n
���[��\,c05x2,0,0
,ImageDef,reimu,�얲_�G2,0,0
���ꂪ�悭�o���ĂȂ��̂��\,c11x2,0,0
,ClearBalloon,reimu


#�Љ�J�b�g�\���@�얲�́u�얲_�G2�v����̂ݎ��s�\\,a11x2,0,0
,th145_CharName_Cutin,reimu
,Function,"function main(){ for (local i=0; i < 30; i++) suspend(); }"

# ********************************************
# ********************************************

#1P�ォ��o��
#,Function,GameStory_1P_In_Side(),
#,Function,"function main(){ for (local i=0; i < 90; i++) suspend(); }"

,SetFocus,marisa	,
,ImageDef,marisa,������_��1,0,0
�Ȃ񂾖��Ȃ񂶂�Ȃ��̂��H\,a11x2,0,0
,ClearBalloon,marisa

,SetFocus,reimu		,
,ImageDef,reimu,�얲_��1,0,0
���[��H\,a05x2,0,0
,ClearBalloon,reimu

,SetFocus,marisa		,
,ImageDef,marisa,������_�]1,0,0
�������ɂ�����\n���Ȃ琶���߂肵�Ă��̂�\,a11x2,0,0
,ClearBalloon,marisa

,SetFocus,reimu		,
,ImageDef,reimu,�얲_��1,0,0
���[�H\,a05x2,0,0
,ClearBalloon,reimu

,SetFocus,marisa		,
,ImageDef,marisa,������_�G1,0,0
�Ƃɂ�����\n���̃{�[����Ԃ�\,c11x2,0,0
,ClearBalloon,marisa

,SetFocus,reimu		,
,ImageDef,reimu,�얲_�f1,0,0
�Ȃ񂾂���\n�{�[���̎����c�c\,a11x2,0,0
,ClearBalloon,reimu

,SetFocus,marisa		,
,ImageDef,marisa,������_��1,0,0
�Ƃڂ����\n���̉e���ŉe�l������ꂽ�񂾂�I\,a15x3,0,0
,ClearBalloon,marisa

,SetFocus,marisa		,
,ImageDef,marisa,������_��1,0,0
�������ׂĂ���\,b11x2,0,0
,ClearBalloon,marisa



#,Function,"StopBGM(500);",# BGM��~

#���҃t�F�C�X�P��
,th145_Hide,marisa,-1280,&
,th145_Hide,reimu,-1280,

,Function,"GameStory_PlayBattleBGM(501);",# �퓬BGM�Đ��J�n

,Function,"RoundStory_Ready();",# TODO::�ΐ�J�n����

,End




# -------------------------------------------------------
# �s�k��
# -------------------------------------------------------
:lose
,GoSub,init				,# ���������[�`���Ăяo��

#�����\��ݒ�
,ImageDef,marisa,������_��1,0,0
,ImageDef,reimu,�얲_�]1,0,0

,th145_Show,marisa,-1280	,&,#�������t�F�C�X�\���J�n
,th145_Show,reimu,-1280	,#�������t�F�C�X�\���J�n

,SetFocus,reimu		,
,ImageDef,reimu,�얲_��1,0,0
�e�̐l�ɏo����Ă����\n�L�����B���Ȃ̂�˂�\,a11x2,0,0
,ClearBalloon,reimu



,Function,"::StopBGM(1500);"
#�R���e�j���[�����ւ̃W�����v��\��@���݂͉��Ŏ��̃X�e�[�W�ɐi��ł����߂鏈�����s���A���X�e�[�W�̍ŏ�����ĊJ���܂�
,Thread,"::story.BeginOpening();"#�I�[�v�j���O�J�n

,End

# -------------------------------------------------------
# ����
# -------------------------------------------------------
:win
,GoSub,init				,# ���������[�`���Ăяo��

#�����\��ݒ�
,ImageDef,marisa,������_��1,0,0
,ImageDef,reimu,�얲_��1,0,0

,th145_Show,marisa,-1280	,&,#�������t�F�C�X�\���J�n
,th145_Show,reimu,-1280	,#�������t�F�C�X�\���J�n


,SetFocus,marisa		,
,ImageDef,marisa,������_�f1,0,0
����������\,a05x2,0,0
���O�����S�������Ă���\n�Ǝv�����񂾂�\,a11x2,0,0
,ClearBalloon,marisa

,SetFocus,reimu		,
,ImageDef,reimu,�얲_��1,0,0
�����ĂȂ����\n���������΂��񂽂���D��������\n���̊Ԃɂ������Ȃ��Ă��̂��\,a15x3,0,0
,ClearBalloon,reimu

,SetFocus,marisa		,
,ImageDef,marisa,������_��2,0,0
�ӂށc�c\n�����ǂ��Ȃ��Ă����\,a11x2,0,0
,ClearBalloon,marisa


,Function,"::StopBGM(1500);"
,Thread,"::story.NextStage();"



,End

# -------------------------------------------------------
# �T�u���[�`��
# -------------------------------------------------------
:TestMessage
�T�u���[�`�����s\
,ClearBalloon
,Return
