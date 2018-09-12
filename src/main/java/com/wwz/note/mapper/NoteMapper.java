package com.wwz.note.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.wwz.note.pojo.Note;

@Mapper
public interface NoteMapper {
	public int add(Note note);
	public void delete(int id);
	public int update(Note note);
	public Note get(int id);
	public List<Note> list();
}
