package com.wwz.note.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.wwz.note.mapper.NoteMapper;
import com.wwz.note.pojo.Note;
import com.wwz.note.service.NoteService;

@Service("noteService")
public class NoteServiceImpl implements NoteService {

	@Autowired
	NoteMapper noteMapper;

	@Override
	public int add(Note note) {
		return noteMapper.add(note);
	}

	@Override
	public void delete(int id) {
		noteMapper.delete(id);
	}

	@Override
	public int update(Note note) {
		return noteMapper.update(note);
	}

	@Override
	public Note get(int id) {
		return noteMapper.get(id);
	}
	
	@Override
	public List<Note> list() {
		return noteMapper.list();
	}

}
