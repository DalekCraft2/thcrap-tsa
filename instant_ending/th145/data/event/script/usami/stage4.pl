#========================================================================
#	俎q�X�g�[���[
#	�X�e�[�W4�@VS������
#	�ꏊ�F�d���K�̐X
#	�X�e�[�W�^�C�g��
#	   �u���z�����̐���v
#
#========================================================================
:init
,Function,"::StopBGM(1500);"
,Thread,"::story.NextStage();"
,End

,SetDefaultBalloon,0,#���b�Z�[�W�ɕ��o���w������Ȃ��ꍇ�̃f�t�H���g���o����ݒ�

#�t�F�C�X�摜�Q�Ƃ̒�`
,LoadImageDef,"data/event/pic/usami.csv"
,LoadImageDef,"data/event/pic/marisa.csv"

#�t�F�C�X�摜
,DefineObject,usami,-360,0,false
,DefineObject,marisa,-360,0,true

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

,Function,"GameStory_PlayBGM(706);",# ��bBGM�Đ��J�n

#�������o�^
,DefineObject,usami_label,50,360,false
,DefineObject,marisa_label,1120,360,false

#�����\��ݒ�
,ImageDef,usami,俎q_��1,0,0
,ImageDef,marisa,������_��1,0,0


#X�t���[���̑ҋ@�����isleep�ƈقȂ�X�L�b�v����Ŕ�΂��Ȃ��j
,Function,"function main(){ for (local i=0; i < 60; i++) suspend(); }"

#�^�C�g���R�[���o��
,Function,GameStory_TitleCall();
,Function,"function main(){ for (local i=0; i < 150; i++) suspend(); }"



,th145_Show,usami,-1280	,


,SetFocus,usami		,
,ImageDef,usami,俎q_�f1,0,0
�������c�c\,a05x2,0,0
,ClearBalloon,usami

,SetFocus,usami		,
,ImageDef,usami,俎q_��1,0,0
�����ɂ͂��̊X�ȊO��\n�l���Z��ł����ȏ���������\,a15x3,0,0
,ClearBalloon,usami

,SetFocus,usami		,
,ImageDef,usami,俎q_��1,0,0
�����A�ǂ��ɂ�����\n�O�̐��E�ɋA�肽��\,a11x2,0,0
,ClearBalloon,usami

# 2P�L�����X�e�[�W������o��
,Function,GameStory_2P_In_Side(),
,Function,"function main(){ for (local i=0; i < 60; i++) suspend(); }"

,th145_Show,marisa,-1280,
,SetFocus,marisa		,
,ImageDef,marisa,������_�G1,0,0
���A����ƌ�������\,a11x2,0,0
,ClearBalloon,marisa

#�Љ�J�b�g�\���@�������́u������_�G1�v����̂ݎ��s�\\,a11x2,0,0
,th145_CharName_Cutin,marisa
,Function,"function main(){ for (local i=0; i < 30; i++) suspend(); }"

,SetFocus,usami		,
,ImageDef,usami,俎q_��1,0,0
���[�@���̎��̐l�ԁI\,a11x2,0,0
,ClearBalloon,usami

,SetFocus,marisa		,
,ImageDef,marisa,������_��1,0,0
���J��������\,a11x2,0,0
,ClearBalloon,marisa

,SetFocus,usami		,
,ImageDef,usami,俎q_��1,0,0
���������[\n\R[���z��|������]�ɕ����߂���\n�r���ɕ��Ă����̂�\,a15x3,0,0
,ClearBalloon,usami

,SetFocus,marisa		,
,ImageDef,marisa,������_�]1,0,0
�ӂӂӂӂ�\,a05x2,0,0
,ClearBalloon,marisa

,SetFocus,usami		,
,ImageDef,usami,俎q_�f1,0,0
�������������́H\n�l�ԂȂ�ł��叕���Ă�[\,a11x2,0,0
,ClearBalloon,usami

,SetFocus,marisa		,
,ImageDef,marisa,������_��1,0,0
�N��������Ȃ�Č���������\n�l�Ԃ��������\n�݂�Ȗ������Ǝv���Ȃ�\,a15x3,0,0
,ClearBalloon,marisa

,SetFocus,marisa		,
,ImageDef,marisa,������_��1,0,0
���͂��񂽂��R�e���p����\n���邽�߂ɒT���Ă���\,a15x3,0,0
,ClearBalloon,marisa

,SetFocus,marisa		,
,ImageDef,marisa,������_��1,0,0
���z�����̐����\n�󂯂邪�����I\,a11x2,0,0
,ClearBalloon,marisa



,Function,"StopBGM(500);",# BGM��~

#���҃t�F�C�X�P��
,th145_Hide,usami,-1280,&
,th145_Hide,marisa,-1280,

,Function,"GameStory_PlayBattleBGM(502);",# �퓬BGM�Đ��J�n

,Function,"RoundStory_Ready();",# TODO::�ΐ�J�n����

,End



# -------------------------------------------------------
# �s�k��
# -------------------------------------------------------
:lose
,GoSub,init				,# ���������[�`���Ăяo��

#�����\��ݒ�
,ImageDef,usami,俎q_��1,0,0
,ImageDef,marisa,������_�]1,0,0

,th145_Show,usami,-1280	,&,#俎q�t�F�C�X�\���J�n
,th145_Show,marisa,-1280	,#俎q�t�F�C�X�\���J�n

,SetFocus,marisa
�����Ƃ��߂������ȁH\,a11x2,0,0

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
,ImageDef,usami,俎q_��1,0,0
,ImageDef,marisa,������_�f1,0,0

,th145_Show,usami,-1280	,&,#俎q�t�F�C�X�\���J�n
,th145_Show,marisa,-1280	,#俎q�t�F�C�X�\���J�n


,SetFocus,usami		,
�Ђ��[\n���ōU�����Ă���́[\,a11x2,0,0
,ClearBalloon,usami

,SetFocus,marisa		,
���ł���\n���O�A����Ȃ��̂��H\,a11x2,0,0
,ClearBalloon,marisa

,SetFocus,marisa		,
,ImageDef,marisa,������_��1,0,0
�������N�������̂�\n���O�̕����炾��\,a11x2,0,0
,ClearBalloon,marisa

,SetFocus,usami		,
,ImageDef,usami,俎q_��1,0,0
����Ȃ̂�����Ƃ���\n�C�^�Y������Ȃ��́[\,a11x2,0,0
,ClearBalloon,usami

,SetFocus,usami		,
,ImageDef,usami,俎q_�{1,0,0
���������Ȕڗ��\n��œ�ւ��Ȃ�ā[\,a11x2,0,0
,ClearBalloon,usami

,th145_Hide,usami,-1280,
,Function,"GameStory_1P_Out_Back();"
,Function,"function main(){ for (local i=0; i < 60; i++) suspend(); }"

,SetFocus,marisa		,
,ImageDef,marisa,������_��1,0,0
�܂��܂����Ȃ��ĂȂ�\n�悤����\,a11x2,0,0
,ClearBalloon,marisa

,SetFocus,marisa		,
,ImageDef,marisa,������_��1,0,0
���������ɂ��ڂ�\n�����ĖႤ��\,a11x2,0,0
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
