#========================================================================
#	���J�������X�g�[���[
#	�X�e�[�W2�@VS���
#	�ꏊ�F��D
#	�X�e�[�W�^�C�g��
#	   �u�����Č��グ��ȁv
#
#========================================================================
:init
,Function,"::StopBGM(1500);"
,Thread,"::story.NextStage();"
,End
,SetDefaultBalloon,0,#���b�Z�[�W�ɕ��o���w������Ȃ��ꍇ�̃f�t�H���g���o����ݒ�

#�t�F�C�X�摜�Q�Ƃ̒�`
,LoadImageDef,"data/event/pic/marisa.csv"
,LoadImageDef,"data/event/pic/ichirin.csv"

#�t�F�C�X�摜
,DefineObject,marisa,-360,0,false
,DefineObject,ichirin,-360,0,true

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

,Function,"GameStory_PlayBGM(704);",# ��bBGM�Đ��J�n

#�������o�^
,DefineObject,marisa_label,50,360,false
,DefineObject,ichirin_label,1120,360,false

#�����\��ݒ�
,ImageDef,marisa,������_��1,0,0
,ImageDef,ichirin,���_��1,0,0


#X�t���[���̑ҋ@�����isleep�ƈقȂ�X�L�b�v����Ŕ�΂��Ȃ��j
,Function,"function main(){ for (local i=0; i < 60; i++) suspend(); }"

#�^�C�g���R�[���o��
,Function,GameStory_TitleCall();
,Function,"function main(){ for (local i=0; i < 150; i++) suspend(); }"



,SetFocus,marisa		,#�������L�������w��
,ImageDef,marisa,������_��1,0,0
,th145_Show,marisa,-1280	,#�얲�t�F�C�X�\���J�n
���̕@�������ɃI�J���g�{�[����\n����ƌ����Ă���\,a15x3,0,0
,ClearBalloon,marisa

,SetFocus,marisa		,#�������L�������w��
,ImageDef,marisa,������_��1,0,0
�c�c�{�[���ȊO�ɂ�\n����̓��������邺�[\n��D������\,a15x3,0,0
,ClearBalloon,marisa

,ImageDef,marisa,������_��1,0,0

# 2P�L�����X�e�[�W������o��
,Function,GameStory_2P_In_Side(),
#,Function,GameStory_2P_In_Side(),
,Function,"function main(){ for (local i=0; i < 60; i++) suspend(); }"


,SetFocus,ichirin		,#�������L�������w��
,ImageDef,ichirin,���_��1,0,0
,th145_Show,ichirin,-1280	,#��փt�F�C�X�\���J�n
�������p�ł����H\,a11x2,0,0
,ClearBalloon,ichirin

,ImageDef,ichirin,���_��1,0,0
,ClearBalloon,ichirin

#�Љ�J�b�g�\���@��ւ́u���_��1�v����̂ݎ��s�\\,a11x2,0,0
,th145_CharName_Cutin,ichirin
,Function,"function main(){ for (local i=0; i < 30; i++) suspend(); }"


# ********************************************
# ********************************************

,SetFocus,marisa		,#�������L�������w��
,ImageDef,marisa,������_��1,0,0
������\n�ז���������\,a11x2,0,0
,ClearBalloon,marisa

,SetFocus,ichirin		,#�������L�������w��
,ImageDef,ichirin,���_�f1,0,0
����ωҋƂ̓D�_�ł���\,a11x2,0,0
,ClearBalloon,ichirin

,SetFocus,marisa		,#�������L�������w��
,ImageDef,marisa,������_�f1,0,0
�c�c��H\n���O�Ȃ񂩕��͋C�ς�������H\,c15x3,0,0
,ClearBalloon,marisa

,SetFocus,ichirin		,#�������L�������w��
,ImageDef,ichirin,���_��1,0,0
����A�ɂ��ݏo��o�҂̕��i��\n�o�Ă��܂����H\,a15x3,0,0
,ClearBalloon,ichirin

,SetFocus,marisa		,#�������L�������w��
,ImageDef,marisa,������_��1,0,0
�Ⴄ��\n�s�C���ȃI�[����Z���Ă邺\n�I�J���g�L���񂾂�A���O\,a15x3,0,0
,ClearBalloon,marisa

,Function,"StopBGM(500);",# BGM��~

#���҃t�F�C�X�P��
,th145_Hide,marisa,-1280,&
,th145_Hide,ichirin,-1280,

,Function,"GameStory_PlayBattleBGM(503);",# �퓬BGM�Đ��J�n

,Function,"RoundStory_Ready();",# TODO::�ΐ�J�n����

,End




# -------------------------------------------------------
# �s�k��
# -------------------------------------------------------
:lose
,GoSub,init				,# ���������[�`���Ăяo��

#�����\��ݒ�
,ImageDef,marisa,������_��1,0,0
,ImageDef,ichirin,���_�]1,0,0

,th145_Show,marisa,-1280	,&,#�������t�F�C�X�\���J�n
,th145_Show,ichirin,-1280	,#�������t�F�C�X�\���J�n

,SetFocus,ichirin,
�ŋߐV�����������߂��Ă�݂���\,a15x3,0,0

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
,ImageDef,marisa,������_��2,0,0
,ImageDef,ichirin,���_��1,0,0

,th145_Show,marisa,-1280	,&,#�������t�F�C�X�\���J�n
,th145_Show,ichirin,-1280	,#�������t�F�C�X�\���J�n

,SetFocus,marisa		,
����ς�{�[����\n�����Ă�����\,a11x2,0,0
,ClearBalloon,marisa

,SetFocus,ichirin
�����������[\,a05x2,0,0
,ClearBalloon,ichirin

,SetFocus,ichirin
�Ȃ񂩂Ɏ��߂���Ă���Ǝv������\n�������̃{�[���͉��Ȃ́H\,c15x3,0,0
,ClearBalloon,ichirin


,SetFocus,marisa		,
,ImageDef,marisa,������_��1,0,0
�C�ɂ����\n���ɂ������Ă��Ȃ�\,a11x2,0,0
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
